import streamlit as st
import pandas as pd
import mysql.connector
from Queries import QUERIES
import os
from dotenv import load_dotenv
load_dotenv()

st.set_page_config(page_title="Local Food Wastage Management System", layout="wide")

# -----------------------------
# DATABASE CONNECTION
# -----------------------------

def get_connection():
    conn = mysql.connector.connect(
        host= os.getenv("DB_HOST"),
        user= os.getenv("DB_USER"),
        password=os.getenv("DB_PASSWORD"),
        database= os.getenv("DB_NAME")  
    )
    return conn

def run_query(query, params=None):
    conn = get_connection()
    cursor = conn.cursor(dictionary=True)

    if params:
        cursor.execute(query, params)
    else:
        cursor.execute(query)

    data = cursor.fetchall()
    df = pd.DataFrame(data)

    cursor.close()
    conn.close()
    return df

def run_action_query(query, params=None):
    conn = get_connection()
    cursor = conn.cursor()

    if params:
        cursor.execute(query, params)
    else:
        cursor.execute(query)

    conn.commit()
    cursor.close()
    conn.close()

# -----------------------------
# SIDEBAR
# -----------------------------
st.sidebar.title("Navigation")
page = st.sidebar.radio(
    "Go to",
    ["Dashboard", "View Tables", "Food Listings Filter", "SQL Queries", "CRUD Operations"]
)

st.title("Local Food Wastage Management System")

# -----------------------------
# DASHBOARD
# -----------------------------
if page == "Dashboard":
    st.header("Dashboard")

    try:
        total_providers = run_query("SELECT COUNT(*) AS total FROM providers").iloc[0]["total"]
        total_receivers = run_query("SELECT COUNT(*) AS total FROM receivers").iloc[0]["total"]
        total_food_listings = run_query("SELECT COUNT(*) AS total FROM food_listings").iloc[0]["total"]
        total_claims = run_query("SELECT COUNT(*) AS total FROM claims").iloc[0]["total"]
        total_quantity = run_query("SELECT SUM(Quantity) AS total_quantity FROM food_listings").iloc[0]["total_quantity"]
    except:
        total_providers = 0
        total_receivers = 0
        total_food_listings = 0
        total_claims = 0
        total_quantity = 0

    col1, col2, col3, col4, col5 = st.columns(5)
    col1.metric("Providers", total_providers)
    col2.metric("Receivers", total_receivers)
    col3.metric("Food Listings", total_food_listings)
    col4.metric("Claims", total_claims)
    col5.metric("Total Quantity", total_quantity)

    st.subheader("Food Listings by Location")
    query = """
        SELECT Location, COUNT(*) AS listing_count
        FROM food_listings
        GROUP BY Location
        ORDER BY listing_count DESC
    """
    df_location = run_query(query)
    st.dataframe(df_location, use_container_width=True)

    st.subheader("Claim Status Count")
    query = """
        SELECT Status, COUNT(*) AS status_count
        FROM claims
        GROUP BY Status
        ORDER BY status_count DESC
    """
    df_status = run_query(query)
    st.dataframe(df_status, use_container_width=True)

# -----------------------------
# VIEW TABLES
# -----------------------------
elif page == "View Tables":
    st.header("View Tables")

    table_name = st.selectbox(
        "Select Table",
        ["providers", "receivers", "food_listings", "claims", "final_merged_data"]
    )

    query = f"SELECT * FROM {table_name}"
    df = run_query(query)
    st.dataframe(df, use_container_width=True)

# -----------------------------
# FOOD LISTINGS FILTER
# -----------------------------
elif page == "Food Listings Filter":
    st.header("Food Listings Filter")

    location_list = run_query("SELECT DISTINCT Location FROM food_listings ORDER BY Location")
    food_type_list = run_query("SELECT DISTINCT Food_Type FROM food_listings ORDER BY Food_Type")
    meal_type_list = run_query("SELECT DISTINCT Meal_Type FROM food_listings ORDER BY Meal_Type")
    provider_type_list = run_query("SELECT DISTINCT Provider_Type FROM food_listings ORDER BY Provider_Type")

    selected_location = st.selectbox("Select Location", ["All"] + location_list["Location"].dropna().tolist())
    selected_food_type = st.selectbox("Select Food Type", ["All"] + food_type_list["Food_Type"].dropna().tolist())
    selected_meal_type = st.selectbox("Select Meal Type", ["All"] + meal_type_list["Meal_Type"].dropna().tolist())
    selected_provider_type = st.selectbox("Select Provider Type", ["All"] + provider_type_list["Provider_Type"].dropna().tolist())

    query = """
        SELECT Food_ID, Food_Name, Quantity, Expiry_Date, Provider_ID,
               Provider_Type, Location, Food_Type, Meal_Type
        FROM food_listings
        WHERE 1=1
    """

    params = []

    if selected_location != "All":
        query += " AND Location = %s"
        params.append(selected_location)

    if selected_food_type != "All":
        query += " AND Food_Type = %s"
        params.append(selected_food_type)

    if selected_meal_type != "All":
        query += " AND Meal_Type = %s"
        params.append(selected_meal_type)

    if selected_provider_type != "All":
        query += " AND Provider_Type = %s"
        params.append(selected_provider_type)

    df_filtered = run_query(query, tuple(params) if params else None)
    st.dataframe(df_filtered, use_container_width=True)

# -----------------------------
# SQL QUERIES
# -----------------------------
elif page == "SQL Queries":
    st.header("SQL Queries Output")

    query_option = st.selectbox(
        "Select Query",
        [
            "1. Providers in each city",
            "2. Receivers in each city",
            "3. Provider type contributing the most food",
            "4. Contact information of providers in a city",
            "5. Receivers who claimed the most food",
            "6. Total quantity of food available",
            "7. City with highest number of listings",
            "8. Most commonly available food types",
            "9. Claims made for each food item",
            "10. Provider with highest successful claims",
            "11. Claim status count",
            "12. Average quantity claimed per receiver",
            "13. Most claimed meal type",
            "14. Total quantity donated by each provider",
            "15. Claims by status and city"
        ]
    )

    if query_option == "1. Providers in each city":
        query = """
            SELECT City, COUNT(*) AS total_providers
            FROM providers
            GROUP BY City
            ORDER BY total_providers DESC
        """
        df = run_query(query)
        st.dataframe(df, use_container_width=True)

    elif query_option == "2. Receivers in each city":
        query = """
            SELECT City, COUNT(*) AS total_receivers
            FROM receivers
            GROUP BY City
            ORDER BY total_receivers DESC
        """
        df = run_query(query)
        st.dataframe(df, use_container_width=True)

    elif query_option == "3. Provider type contributing the most food":
        query = """
            SELECT Provider_Type, SUM(Quantity) AS total_quantity
            FROM food_listings
            GROUP BY Provider_Type
            ORDER BY total_quantity DESC
        """
        df = run_query(query)
        st.dataframe(df, use_container_width=True)

    elif query_option == "4. Contact information of providers in a city":
        city_name = st.text_input("Enter City Name", "Hamiltontown")
        query = """
            SELECT Name, Contact, City
            FROM providers
            WHERE City = %s
        """
        df = run_query(query, (city_name,))
        st.dataframe(df, use_container_width=True)

    elif query_option == "5. Receivers who claimed the most food":
        query = """
            SELECT receivers.Receiver_ID, receivers.Name, COUNT(*) AS total_claims
            FROM receivers
            JOIN claims
            ON receivers.Receiver_ID = claims.Receiver_ID
            GROUP BY receivers.Receiver_ID, receivers.Name
            ORDER BY total_claims DESC
        """
        df = run_query(query)
        st.dataframe(df, use_container_width=True)

    elif query_option == "6. Total quantity of food available":
        query = """
            SELECT SUM(Quantity) AS total_available_quantity
            FROM food_listings
        """
        df = run_query(query)
        st.dataframe(df, use_container_width=True)

    elif query_option == "7. City with highest number of listings":
        query = """
            SELECT Location, COUNT(*) AS listing_count
            FROM food_listings
            GROUP BY Location
            ORDER BY listing_count DESC
        """
        df = run_query(query)
        st.dataframe(df, use_container_width=True)

    elif query_option == "8. Most commonly available food types":
        query = """
            SELECT Food_Type, COUNT(*) AS total_count
            FROM food_listings
            GROUP BY Food_Type
            ORDER BY total_count DESC
        """
        df = run_query(query)
        st.dataframe(df, use_container_width=True)

    elif query_option == "9. Claims made for each food item":
        query = """
            SELECT Food_ID, COUNT(*) AS claim_count
            FROM claims
            GROUP BY Food_ID
            ORDER BY claim_count DESC
        """
        df = run_query(query)
        st.dataframe(df, use_container_width=True)

    elif query_option == "10. Provider with highest successful claims":
        query = """
            SELECT providers.Provider_ID, providers.Name, COUNT(*) AS successful_claims
            FROM claims
            JOIN food_listings
            ON claims.Food_ID = food_listings.Food_ID
            JOIN providers
            ON food_listings.Provider_ID = providers.Provider_ID
            WHERE claims.Status = 'Completed'
            GROUP BY providers.Provider_ID, providers.Name
            ORDER BY successful_claims DESC
        """
        df = run_query(query)
        st.dataframe(df, use_container_width=True)

    elif query_option == "11. Claim status count":
        query = """
            SELECT Status, COUNT(*) AS status_count
            FROM claims
            GROUP BY Status
            ORDER BY status_count DESC
        """
        df = run_query(query)
        st.dataframe(df, use_container_width=True)

    elif query_option == "12. Average quantity claimed per receiver":
        query = """
            SELECT receivers.Receiver_ID, receivers.Name, AVG(food_listings.Quantity) AS avg_quantity
            FROM claims
            JOIN receivers
            ON claims.Receiver_ID = receivers.Receiver_ID
            JOIN food_listings
            ON claims.Food_ID = food_listings.Food_ID
            GROUP BY receivers.Receiver_ID, receivers.Name
            ORDER BY avg_quantity DESC
        """
        df = run_query(query)
        st.dataframe(df, use_container_width=True)

    elif query_option == "13. Most claimed meal type":
        query = """
            SELECT food_listings.Meal_Type, COUNT(*) AS total_claims
            FROM claims
            JOIN food_listings
            ON claims.Food_ID = food_listings.Food_ID
            GROUP BY food_listings.Meal_Type
            ORDER BY total_claims DESC
        """
        df = run_query(query)
        st.dataframe(df, use_container_width=True)

    elif query_option == "14. Total quantity donated by each provider":
        query = """
            SELECT providers.Provider_ID, providers.Name, SUM(food_listings.Quantity) AS total_donated
            FROM providers
            JOIN food_listings
            ON providers.Provider_ID = food_listings.Provider_ID
            GROUP BY providers.Provider_ID, providers.Name
            ORDER BY total_donated DESC
        """
        df = run_query(query)
        st.dataframe(df, use_container_width=True)

    elif query_option == "15. Claims by status and city":
        query = """
            SELECT food_listings.Location, claims.Status, COUNT(*) AS claim_count
            FROM claims
            JOIN food_listings
            ON claims.Food_ID = food_listings.Food_ID
            GROUP BY food_listings.Location, claims.Status
            ORDER BY food_listings.Location, claims.Status
        """
        df = run_query(query)
        st.dataframe(df, use_container_width=True)

# -----------------------------
# CRUD OPERATIONS
# -----------------------------
elif page == "CRUD Operations":
    st.header("CRUD Operations for Food Listings")

    tab1, tab2, tab3 = st.tabs(["Add", "Update", "Delete"])

    with tab1:
        st.subheader("Add New Food Listing")
        with st.form("add_food_listing"):
            food_id = st.number_input("Food ID", min_value=1, step=1)
            food_name = st.text_input("Food Name")
            quantity = st.number_input("Quantity", min_value=1, step=1)
            expiry_date = st.date_input("Expiry Date")
            provider_id = st.number_input("Provider ID", min_value=1, step=1)
            provider_type = st.text_input("Provider Type")
            location = st.text_input("Location")
            food_type = st.text_input("Food Type")
            meal_type = st.text_input("Meal Type")

            add_button = st.form_submit_button("Add Record")

            if add_button:
                query = """
                    INSERT INTO food_listings
                    (Food_ID, Food_Name, Quantity, Expiry_Date, Provider_ID, Provider_Type, Location, Food_Type, Meal_Type)
                    VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)
                """
                params = (int(food_id), food_name, int(quantity), expiry_date, int(provider_id), provider_type, location, food_type, meal_type)
                run_action_query(query, params)
                st.success("Food listing added successfully")

    with tab2:
        st.subheader("Update Food Listing Quantity")
        with st.form("update_food_listing"):
            food_id = st.number_input("Enter Food ID", min_value=1, step=1)
            new_quantity = st.number_input("Enter New Quantity", min_value=1, step=1)

            update_button = st.form_submit_button("Update Record")

            if update_button:
                query = """
                    UPDATE food_listings
                    SET Quantity = %s
                    WHERE Food_ID = %s
                """
                params = (new_quantity, food_id)
                run_action_query(query, params)
                st.success("Food listing updated successfully")

    with tab3:
        st.subheader("Delete Food Listing")
        with st.form("delete_food_listing"):
            food_id_delete = st.number_input("Enter Food ID to Delete", min_value=1, step=1)

            delete_button = st.form_submit_button("Delete Record")

            if delete_button:
                query = """
                    DELETE FROM food_listings
                    WHERE Food_ID = %s
                """
                params = (food_id_delete,)
                run_action_query(query, params)
                st.success("Food listing deleted successfully")

