FROM python:3.10-slim-buster

WORKDIR /medibotApp

COPY . /medibotApp

RUN pip install -r requirements.txt

CMD ["python3", "app.py"]

#-----------------------------------------------

# FROM python:3.10-slim

# # Set working directory
# WORKDIR /chatbot-app 

# # Copy requirements first for better caching
# COPY requirements.txt .
# COPY setup.py .

# # Upgrade pip and install dependencies
# RUN pip install --upgrade pip
# RUN pip install --no-cache-dir -r requirements.txt

# # Copy application code
# COPY . .

# # Expose port
# EXPOSE 8080


# # Run the application
# CMD ["python", "app.py"]