# Use Python base image
FROM python:3.10

# Set the working directory inside the container
WORKDIR /app

# Copy all project files into the container
COPY . .

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Run database migrations
RUN python manage.py migrate

# Start the Django application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
