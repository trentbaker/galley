import adafruit_mcp3xxx.mcp3008 as MCP
import board
import busio
import digitalio
from adafruit_mcp3xxx.analog_in import AnalogIn
from flask import Flask
from prometheus_client.exposition import make_wsgi_app
from prometheus_client.metrics import Gauge
from werkzeug.middleware.dispatcher import DispatcherMiddleware

# ----- temperature -----
spi = busio.SPI(clock=board.SCK, MISO=board.MISO, MOSI=board.MOSI)
cs = digitalio.DigitalInOut(board.D5)
mcp = MCP.MCP3008(spi, cs)
chan = AnalogIn(mcp, MCP.P0)
# ----- end -----

# ----- web -----
app = Flask(__name__)

random_gauge = Gauge("random_value", "A Random Value")
temp = Gauge("temperature", "temp temperature")
temp.set_function(str(chan.voltage))

reporting = DispatcherMiddleware(app, {
    '/metrics': make_wsgi_app()
})
# ----- end -----

