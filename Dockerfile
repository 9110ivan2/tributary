## version that would be used 
FROM python:3.11
COPY ./requirements.txt .
RUN pip install -r requirements.txt

## copies the file in docker
COPY ./entrypoint.py .
CMD exec gunicorn --bind 0.0.0.0:8000 entrypoint:app