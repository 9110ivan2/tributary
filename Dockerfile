## version that would be used 
FROM python:3.11
COPY ./requirements.txt .
RUN pip install -r requirements.txt
## using the container
CMD exec gunicorn entrypoint:app
## copies the file in docker
COPY ./entrypoint.py .
