FROM python

WORKDIR app

COPY main.py /app
COPY pyproject.toml /app

RUN pip install poetry
RUN poetry install
