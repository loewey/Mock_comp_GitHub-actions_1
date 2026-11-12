# Yes I know this Dockerfile is vulnerable and not production ready, but it is for educational purposes so leave me out. 

# Contains intentional security misconfigurations
# Some of the most common vulnerabilities are:
    
# Vulnerability 1: Using latest tag which is unpredictable (PHP)
FROM python:3.9


# Vulnerability 2: I'm running this as root user which is a bad practice

# Vulnerability 3: Installing unnecessary packages which just isn't needed, but common.
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    vim \
    net-tools \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app


COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt


COPY src/ ./src/

# Vulnerability 4: Exposes the port being used by the application. 
EXPOSE 5000

# Vulnerability 5: Using shell form (not exec form)
CMD python src/vulnerable_app.py