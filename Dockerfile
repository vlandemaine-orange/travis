FROM python:2-alpine

RUN mkdir /app
WORKDIR /app
COPY hello_world.py /app
COPY requirements.txt /app
RUN pip install -r /app/requirements.txt
ENTRYPOINT ["python", "/app/hello_world.py"]
