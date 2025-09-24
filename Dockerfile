
FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install flask
COPY pyth.py .
EXPOSE 5000
CMD ["gunicorn", "python", "pyth.py"]
