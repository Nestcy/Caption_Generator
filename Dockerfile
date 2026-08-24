FROM python:3.11-slim

WORKDIR /app

# Install system deps required by pillow
RUN apt-get update && apt-get install -y build-essential libjpeg-dev zlib1g-dev && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV PORT=8000

CMD ["uvicorn", "marketing_agency_service:api", "--host", "0.0.0.0", "--port", "8000"]
