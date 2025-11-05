from flask import Flask, request, jsonify
from flask_cors import CORS
import pyodbc

app = Flask(__name__)
CORS(app)  # 👈 Enable CORS for all routes

server = 'first-sql-server.database.windows.net'
database = 'praveen1'
username = 'praveen'
password = 'Diwali2025'
driver = '{ODBC Driver 18 for SQL Server}'

def get_conn():
    conn = pyodbc.connect(
        f'DRIVER={driver};SERVER={server};PORT=1433;DATABASE={database};UID={username};PWD={password}'
    )
    return conn

@app.route('/adduser', methods=['POST'])
def add_user():
    data = request.get_json()
    name = data.get('name')
    email = data.get('email')

    if not name or not email:
        return jsonify({"error": "Missing name or email"}), 400

    conn = get_conn()
    cursor = conn.cursor()
    cursor.execute("INSERT INTO users (name, email) VALUES (?, ?)", (name, email))
    conn.commit()
    conn.close()

    return jsonify({"status": "User added successfully", "user": {"name": name, "email": email}}), 200

@app.route('/users', methods=['GET'])
def get_users():
    conn = get_conn()
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM users")
    rows = cursor.fetchall()
    conn.close()
    users = [{"id": r[0], "name": r[1], "email": r[2]} for r in rows]
    return jsonify(users)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

