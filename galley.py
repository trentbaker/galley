from flask import Flask
from prometheus_client.exposition import make_wsgi_app
from prometheus_client.metrics import Gauge
from werkzeug.middleware.dispatcher import DispatcherMiddleware

app = Flask(__name__)

random_gauge = Gauge("random_value", "A Random Value")

reporting = DispatcherMiddleware(app, {
    '/metrics': make_wsgi_app()
})


#oof