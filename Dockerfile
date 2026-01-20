FROM python:3-alpine

WORKDIR /usr/src/app

COPY poetry.lock ./
COPY pyproject.toml ./
CMD [ "poetry","run python -m unittest" ]

