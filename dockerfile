FROM python:3.9.5-slim

COPY main.py /src/

RUN pip install flask

WORKDIR /src
ENV FLASK_APP=main.py

EXPOSE 5000

CMD ["flask", "run", "-h", "0.0.0.0"]
