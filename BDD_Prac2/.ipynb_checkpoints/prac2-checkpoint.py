import tkinter as tk
from tkinter import ttk
import mysql.connector

def filter_table():
    filter_text = filter_entry.get()
    table.delete(*table.get_children())
    conn = mysql.connector.connect(
        host='localhost',
        user='root',
        password='root',
        database='bdd'
    )
    cursor = conn.cursor()
    query = "SELECT * FROM p2_usuarios"
    cursor.execute(query)
    rows = cursor.fetchall()
    for row in rows:
        if filter_text.lower() in str(row).lower():
            table.insert("", "end", values=row)
    cursor.close()
    conn.close()

def reset_filter():
    filter_entry.delete(0, tk.END)
    table.delete(*table.get_children())
    conn = mysql.connector.connect(
        host='localhost',
        user='root',
        password='root',
        database='bdd'
    )
    cursor = conn.cursor()
    query = "SELECT * FROM p2_usuarios"
    cursor.execute(query)
    rows = cursor.fetchall()
    for row in rows:
        table.insert("", "end", values=row)
    cursor.close()
    conn.close()

def apply_filter():
    filter_text = filter_entry.get()
    table.delete(*table.get_children())
    conn = mysql.connector.connect(
        host='localhost',
        user='root',
        password='root',
        database='bdd'
    )
    cursor = conn.cursor()
    query = "SELECT * FROM p2_usuarios WHERE {} {} '{}'".format(filter_column.get(), filter_operator.get(), filter_text)
    cursor.execute(query)
    rows = cursor.fetchall()
    for row in rows:
        table.insert("", "end", values=row)
    cursor.close()
    conn.close()

root = tk.Tk()
root.title("Filter Table Example")
root.geometry("700x400")

table = ttk.Treeview(root, columns=("IdUsuario", "No_Control", "Nombre", "Domicilio", "Ciudad", "Edad", "Oficio"))
table.heading("IdUsuario", text="IdUsuario")
table.heading("No_Control", text="No_Control")
table.heading("Nombre", text="Nombre")
table.heading("Domicilio", text="Domicilio")
table.heading("Ciudad", text="Ciudad")
table.heading("Edad", text="Edad")
table.heading("Oficio", text="Oficio")
table.pack()

filter_frame = tk.Frame(root)
filter_label = tk.Label(filter_frame, text="Filter:")
filter_label.pack(side="left")
filter_entry = tk.Entry(filter_frame)
filter_entry.pack(side="left")

filter_column = tk.StringVar()
filter_operator = tk.StringVar()

column_label = tk.Label(filter_frame, text="Column:")
column_label.pack(side="left")

column_radio1 = tk.Radiobutton(filter_frame, text="IdUsuario", variable=filter_column, value="IdUsuario")
column_radio1.pack(side="left")
column_radio2 = tk.Radiobutton(filter_frame, text="No_Control", variable=filter_column, value="No_Control")
column_radio2.pack(side="left")
column_radio3 = tk.Radiobutton(filter_frame, text="Nombre", variable=filter_column, value="Nombre")
column_radio3.pack(side="left")

operator_label = tk.Label(filter_frame, text="Operator:")
operator_label.pack(side="left")

operator_radio1 = tk.Radiobutton(filter_frame, text="=", variable=filter_operator, value="=")
operator_radio1.pack(side="left")
operator_radio2 = tk.Radiobutton(filter_frame, text=">", variable=filter_operator, value=">")
operator_radio2.pack(side="left")
operator_radio3 = tk.Radiobutton(filter_frame, text="<", variable=filter_operator, value="<")
operator_radio3.pack(side="left")

filter_button = tk.Button(filter_frame, text="Filter", command=apply_filter)
filter_button.pack(side="left")
filter_frame.pack()

reset_button = tk.Button(filter_frame, text="Reset", command=reset_filter)
reset_button.pack(side="left")

conn = mysql.connector.connect(
    host='localhost',
    user='root',
    password='root',
    database='bdd'
)
cursor = conn.cursor()
query = "SELECT * FROM p2_usuarios"
cursor.execute(query)
rows = cursor.fetchall()

for row in rows:
    table.insert("", "end", values=row)
cursor.close()
conn.close()

# Ejecutar la aplicación
root.mainloop()