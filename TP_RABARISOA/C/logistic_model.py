# -*- coding: utf-8 -*-

import pandas as pd
import joblib
from sklearn.linear_model import LogisticRegression

df = pd.read_csv('/csv/houses.csv')
X = df.drop(columns=['orientation','garden'])
y = df['garden']
model = LogisticRegression()
model.fit(X,y)
joblib.dump(model,'logistic.joblib')