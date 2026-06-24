import sqlite3
import pandas as pd

def cargar_tabla(db_path: str, query: str) -> pd.DataFrame:
    """Ejecuta una query sobre el .sqlite y devuelve un DataFrame."""
    with sqlite3.connect(db_path) as conn:
        return pd.read_sql_query(query, conn)

df = cargar_tabla("Chinook_Sqlite.sqlite", "SELECT * FROM invoices LIMIT 5;")
print(df)

