FROM python:3.9-slim
RUN apt update
RUN pip install flask
WORKDIR /app
COPY . .
EXPOSE 5000
ENTRYPOINT ["python", "app.py"]
