FROM python

RUN mkdir -p /app
WORKDIR app

COPY . /app

RUN pip install poetry
RUN poetry update
