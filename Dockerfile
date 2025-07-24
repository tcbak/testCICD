# 1. Use Python base image
FROM python:3.9

# 2. Set working directory
WORKDIR /app

# 3. Copy requirements
COPY requirements.txt .

# 4. Install packages
RUN pip install -r requirements.txt

# 5. Copy app code
COPY . .

# 6. Run the app
CMD ["python", "app.py"]
