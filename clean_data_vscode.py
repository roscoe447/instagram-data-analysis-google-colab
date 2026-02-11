import pandas as pd
from sqlalchemy import create_engine


# ==============================
# 1. LOAD DATA
# ==============================

df = pd.read_csv("data/clean_dataset.csv")

print("Dataset loaded successfully.")
print(f"Number of rows: {len(df)}")
print(df.head())


# ==============================
# 2. CONNECT TO POSTGRES
# ==============================

engine = create_engine(
    "postgresql+psycopg2://postgres:Sarkaparka6@localhost:5432/postgres"
)


# ==============================
# 3. EXPORT DATA TO DATABASE
# ==============================

df.to_sql(
    name="clean_dataset",
    con=engine,
    if_exists="replace",
    index=False
)

print("Data successfully exported to PostgreSQL.")