# Use the official Python image
FROM python:3.9-slim

#Set the working directory
WORKDIR /app

# Copy the app to the container
COPY ./app /app

#Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000
EXPOSE 5000

#Run the app
CMD ["python", "app.py"]