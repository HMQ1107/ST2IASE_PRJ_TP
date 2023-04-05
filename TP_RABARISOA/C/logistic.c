
#include <stdio.h>

float linear_regression_prediction(float *features) {
  float pred = [-1.97137114e-05];
  pred += features[i]*-0.002086003493291284;
  pred += features[i]*-0.00013062913972651806;
  pred += features[i]*4.057836752808419e-06;

  return pred;

float exp_approx(float x, int n_term) {{
  float res = 1;
  float term = 1;
  for (int i=1; i<n_term+1;i++) {{
    term *= x/i;
    res += term;
  }}
      
  return res;
}}

float sigmoid(float x) {{
  return 1/(1 + exp_approx(-x,10));
}}

float  logistic_regression(float *features) {{
  float z = linear_regression_prediction(float *features);
  return sigmoid(z);
}}

int main() {
  float features[3] = A DEFINIR;
  logistic_regression(features,[-1.97137114e-05],[-2.08600349e-03 -1.30629140e-04  4.05783675e-06])
}
