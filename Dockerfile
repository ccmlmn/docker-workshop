# 1. Base image
FROM python:3.9-slim

# 2. Move our app into the container
WORKDIR /app
COPY requirements.txt .
COPY my-app/app.py .

# 3. Install dependencies
RUN apt-get update && apt-get install -y figlet
RUN pip install -r requirements.txt

# 4. Run the app
CMD ["python", "app.py"]