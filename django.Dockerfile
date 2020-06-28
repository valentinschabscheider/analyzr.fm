# Latest Python version supported by Django
FROM python:3.8

# Make sure logs are received in a timely manner
ENV PYTHONUNBUFFERED 1

# Set working directory
WORKDIR /usr/src/api

# Copy the project files
COPY ./backend .

# Install Python packages
RUN pip install -r requirements.txt

# Migrate and start the app
CMD bash -c "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"

# Make it accessible
EXPOSE 8000