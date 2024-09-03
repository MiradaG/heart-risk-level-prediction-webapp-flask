FROM python:3.12-slim

# Install pip dependencies with specific versions to ensure compatibility
RUN pip install --upgrade pip setuptools wheel



WORKDIR /app


COPY . /app


RUN pip install --no-cache-dir -r requirements.txt


EXPOSE 5000


#ENV PYTHONUNBUFFERED=1


CMD ["python", "main.py"]