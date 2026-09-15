import streamlit as st
import pandas as pd
import joblib

# Page configuration
st.set_page_config(
    page_title="MovieIQ - Predictive Analytics",
    page_icon="🎬",
    layout="wide"
)

# Load saved models and preprocessors
regression_model = joblib.load("linear_regression_model.pkl")
regression_preprocessor = joblib.load("regression_preprocessor.pkl")

classification_model = joblib.load("random_forest_classifier.pkl")
classification_preprocessor = joblib.load("classification_preprocessor.pkl")

# Title
st.title("🎬 MovieIQ - Predictive Analytics on Film Success")
st.markdown(
    "Analyze movie performance and predict potential revenue and success."
)

# Sidebar
st.sidebar.header("Movie Inputs")

budget = st.sidebar.number_input(
    "Budget ($)",
    min_value=0.0,
    value=100000000.0,
    step=1000000.0
)

popularity = st.sidebar.number_input(
    "Popularity",
    min_value=0.0,
    value=20.0,
    step=1.0
)

runtime = st.sidebar.number_input(
    "Runtime (minutes)",
    min_value=0.0,
    value=120.0,
    step=1.0
)

vote_average = st.sidebar.slider(
    "Vote Average",
    min_value=0.0,
    max_value=10.0,
    value=7.0,
    step=0.1
)

genre = st.sidebar.selectbox(
    "Genre",
    [
        "Action",
        "Adventure",
        "Animation",
        "Comedy",
        "Drama",
        "Horror",
        "Romance",
        "Science Fiction",
        "Thriller",
        "Unknown"
    ]
)

# Input dataframe
movie_input = pd.DataFrame({
    "budget": [budget],
    "popularity": [popularity],
    "runtime": [runtime],
    "vote_average": [vote_average],
    "genre": [genre]
})

# Prediction buttons
st.header("🎯 Movie Predictions")

col1, col2 = st.columns(2)

with col1:
    if st.button("Predict Revenue"):
        processed_input = regression_preprocessor.transform(movie_input)
        raw_prediction = regression_model.predict(processed_input)[0]

        if raw_prediction < 0:
            st.warning(
                "Low-confidence prediction: The model produced an "
                "estimate below the valid revenue range for these inputs."
            )
            predicted_revenue = 0
        else:
            predicted_revenue = raw_prediction

        st.success(
            f"Predicted Revenue: ${predicted_revenue:,.2f}"
        )

with col2:
    if st.button("Predict Success"):
        processed_input = classification_preprocessor.transform(movie_input)

        success_probability = classification_model.predict_proba(
            processed_input
        )[0, 1]

        if success_probability >= 0.60:
            st.success("Prediction: Successful Movie")
        else:
            st.error("Prediction: Unsuccessful Movie")

        st.metric(
            "Success Probability",
            f"{success_probability * 100:.1f}%"
        )

# Model Performance
st.header("📊 Model Performance")

col1, col2 = st.columns(2)

with col1:
    st.subheader("Revenue Prediction")
    st.metric("R² Score", "0.5894")
    st.metric("MAE", "$66.66M")
    st.metric("RMSE", "$87.37M")

with col2:
    st.subheader("Success Prediction")
    st.metric("Accuracy", "81.00%")
    st.metric("Precision", "80.95%")
    st.metric("Recall", "100.00%")
    st.metric("F1 Score", "89.47%")

# Business Recommendations
st.header("💡 Business Recommendations")

st.markdown("""
- **Horror** demonstrated the highest average ROI at approximately **83.26%**.
- Budget has a strong positive relationship with revenue (**0.76 correlation**),
  but higher spending does not guarantee success.
- Popularity has almost no correlation with revenue (**0.014**).
- Vote average has almost no correlation with revenue (**-0.005**).
- Revenue prediction can be used as an initial planning estimate, but not as
  a guaranteed outcome.
- The success classifier should be interpreted cautiously because it has
  limited ability to identify unsuccessful movies.
""")

st.info(
    "Note: The success model defines success as Revenue > Budget. "
    "Revenue-derived variables were excluded from the predictive features "
    "to avoid data leakage."
)