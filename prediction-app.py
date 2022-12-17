import streamlit as st
import pandas as pd

st.title("ML Model Predictions")

# Load the predictions from the R model
regression_predictions = pd.read_csv("regression_predictions.csv")
classification_predictions = pd.read_csv("classification_predictions.csv")
clustering_predictions = pd.read_csv("clustering_predictions.csv")

# Display the predictions in the app
st.subheader("Regression Predictions")
st.dataframe(regression_predictions)

st.subheader("Classification Predictions")
st.dataframe(classification_predictions)

st.subheader("Clustering Predictions")
st.dataframe(clustering_predictions)
