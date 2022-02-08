FROM python:3.8-slim-buster
RUN mkdir -p /app
COPY requirements.txt /app/requirements.txt
RUN pip3 install -r /app/requirements.txt
WORKDIR /app
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
