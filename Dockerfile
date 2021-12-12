FROM python:3.8

WORKDIR /app

ADD . /app

RUN apt-get update
# need gcc to compile psycopg2
# RUN pip3 install psycopg2~=2.6
# RUN apt-get autoremove -y gcc
RUN pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]
