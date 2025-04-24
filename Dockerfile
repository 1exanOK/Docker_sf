FROM python:3.9-alpine
RUN apk add --no-cache gcc python3-dev musl-dev postgresql-dev
RUN pip install --no-cache-dir Flask psycopg2-binary configparser
RUN mkdir -p /srv/app/conf
WORKDIR /srv/app
COPY web.py .
COPY web.conf conf/web.conf
CMD ["python3", "web.py"]
