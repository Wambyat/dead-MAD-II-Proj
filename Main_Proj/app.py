from flask import Flask, jsonify, request, render_template
from flask_cors import CORS
import sqlite3
app = Flask(__name__)
CORS(app, resources={r"/*": {"origins": "http://127.0.0.1:3000"}}) 

@app.route('/test', methods=['GET','POST'])
def test():
    if(request.method == 'POST'):
        some_json = request.get_json()
        print(some_json)
        print(type(some_json))
        return jsonify({'you sent': some_json['name']})
    else:
        return jsonify({"about":"Hello World!"})

@app.route('/testdb', methods=['GET','POST'])
def testdb():
    if(request.method == 'POST'):
        some_json = request.get_json()
        print(some_json)
        if some_json['type']=='add':
            table = some_json['table']
            #insert into table (column1, column2, column3) values (value1, value2, value3)
            values = tuple(some_json['values'])
            query = f'INSERT INTO {table} VALUES {values}'
            print(query)
            SQL_Query(query)
        return jsonify({'you sent': values})
    else:
        return jsonify({"about":"Hello World!"})

def SQL_Query(query):
    conn = sqlite3.connect('test.db')
    c = conn.cursor()
    c.execute(query)
    conn.commit()
    conn.close()


if __name__ == '__main__':
    app.run(port=5000, debug=True)