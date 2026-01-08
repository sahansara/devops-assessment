FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app/app.py .
RUN useradd -m appuser
USER appuser
EXPOSE 5000
HEALTHCHECK CMD curl --fail http://localhost:5000/health || exit 1
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
