FROM python

WORKDIR app

COPY myprj/main.py /app
COPY pyproject.toml /app

RUN pip install poetry
RUN poetry update
