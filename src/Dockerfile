FROM python:3.12-slim

ARG VERSION=v1

WORKDIR /app

# Copy base Python files
COPY base/*.py ./base/

# Copy version-specific files
COPY ${VERSION}/ ./${VERSION}/

# Copy requirements if exists
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["python", "-m", "${VERSION}.main"]

