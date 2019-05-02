FROM why2pac/dp4p:0.9.4.13-py34


WORKDIR /data/app

COPY . .

ENV PIP_NO_CACHE_DIR false
RUN pip install -r requirements.txt
