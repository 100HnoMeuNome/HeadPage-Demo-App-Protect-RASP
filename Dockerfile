FROM python:3.8-slim-buster
COPY . /headpage
WORKDIR /headpage
RUN pip3 install --no-cache-dir --upgrade pip && \
EXPOSE 8000
ENTRYPOINT ["python3", "src/manage.py","runserver","0.0.0.0:8000"]