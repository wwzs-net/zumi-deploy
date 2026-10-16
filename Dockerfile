# Minimal Dockerfile to run the FastAPI app
FROM python:3.11-slim

WORKDIR /app

# copy app and requirements
COPY ./app /app
COPY requirements.txt /app

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
