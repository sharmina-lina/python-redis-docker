# Use the official Python image
FROM python:3.9-slim

# Set environment variables
ENV VIRTUAL_ENV=/env
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Create and use virtual environment
RUN python3 -m venv $VIRTUAL_ENV

#Set the working directory
WORKDIR /app
COPY ./app /app
COPY ./requirements.txt .

#Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000
EXPOSE 5000

#Run the app
CMD ["python", "app.py"]