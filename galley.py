from flask import Flask

app = Flask(__name__)

@app.route('/temperature')
def hello_world():
    return "Helloo World?"
