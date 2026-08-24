# Marketing Agency Agent Service

This repository contains a small FastAPI service that runs the Marketing Agency Agent (from a Colab notebook) and exposes a /generate endpoint.

Environment variables (set these in Render or your hosting provider):

- GROQ_API_KEY (required)
- GROQ_MODEL (optional, default: meta-llama/llama-4-scout-17b-16e-instruct)
- GROQ_TEMPERATURE (optional, default: 0.7)
- GOOGLE_API_KEY (optional)
- GEMINI_MODEL (optional)

Deploy:
- Start command: `uvicorn marketing_agency_service:api --host 0.0.0.0 --port ${PORT:-8000}`
- Or use the provided Dockerfile.

Example curl:

curl -X POST "https://<your-host>/generate" \
  -F "client_name=Maximo's Clothing Styles" \
  -F "ad_description=Beautiful Cardigan" \
  -F "platforms=Instagram,LinkedIn" \
  -F "image=@/path/to/ad.jpg"
