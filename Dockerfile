FROM python:3-alpine

WORKDIR /usr/src/app

COPY poetry.lock ./
COPY pyproject.toml ./
RUN pip install poetry
RUN poetry install 

CMD [ "poetry","run python -m unittest" ]

RUN poetry run app