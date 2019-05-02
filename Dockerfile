FROM python:3.7

WORKDIR /usr/src/app


ENV PIP_NO_CACHE_DIR false
ENV PYTHONPATH /usr/src/app

RUN pip install pipenv

COPY . .

RUN pipenv install --system --deploy

EXPOSE 8080

CMD /usr/local/bin/dp4p run