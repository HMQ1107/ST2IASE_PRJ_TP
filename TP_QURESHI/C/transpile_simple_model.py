import joblib as jb


model = jb.load("model.joblib")

intercept = model.intercept_
coef = model.coef_

c_code = f"""
#include <stdio.h>
#include <stdlib.h>

float prediction(float *features, int n_feature) {{
     float pred = {intercept};
"""
for i in range len(coef):
    code+=f"return pred += {coef[i]} * features[{i}];\n};"

code+=f"""
int main(){{
    float features[3] = {{5.6, 8.5, 3.0}};
    float y_pred = prediction(features, 3);
    printf("The predicted price is: %f",y_pred)
    return 0;
}}
""""

with open('linear_reg.c', "w") as f:
    f.write(c_code)