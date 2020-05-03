FROM python:alpine
COPY ./galley.py /app/
COPY ./requirements.txt /app/
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 8000
CMD gunicorn -w 4 -b 0.0.0.0:8000 galley:reporting