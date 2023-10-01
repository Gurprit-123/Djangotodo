FROM python:3.10
RUN mkdir /code
COPY . /code
WORKDIR /code
# RUN python3 -m venv /opt/venv

RUN pip install --upgrade pip

#COPY requirements.txt /code/

RUN pip install -r requirements.txt

WORKDIR /code/todo

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000","--noreload"]