FROM python:3.6.15-slim
ENV FLASK_APP app.py

WORKDIR /home/flask

USER root

COPY boot.sh boot.sh
COPY requirements-x86.txt requirements.txt
COPY app.py app.py

RUN python -m venv myflask

RUN chmod 777 boot.sh
RUN myflask/bin/pip install --upgrade pip
RUN myflask/bin/pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["./boot.sh"]

