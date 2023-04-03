
FROM python:latest

WORKDIR /site_file/site_ofdma
COPY site_ofdma/. /site_file/site_ofdma/

RUN python3 -m pip install django

EXPOSE 8000
CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000" ]