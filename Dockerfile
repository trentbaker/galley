FROM python:alpine
COPY ./galley.py /app/
COPY ./requirements.txt /app/
WORKDIR /app
RUN pip install -r requirements.txt
ENV FLASK_APP=galley.py
EXPOSE 8000
CMD gunicorn galley:app