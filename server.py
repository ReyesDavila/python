from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/01')
def obtener_valor():
    response = jsonify({'valor': 1999})
    response.headers.add('Access-Control-Allow-Origin', '*')  # Permitir todas las origins
    return response

if __name__ == '__main__':
    app.run()