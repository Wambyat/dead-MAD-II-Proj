import sqlite3

def SQL_Query(query):
    conn = sqlite3.connect('test.db')
    c = conn.cursor()
    c.execute(query)
    conn.commit()
    conn.close()

SQL_Query('CREATE TABLE IF NOT EXISTS testtable (id INTEGER PRIMARY KEY, name TEXT, age INTEGER)')