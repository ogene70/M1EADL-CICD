FROM python:3-alpine AS test

WORKDIR /usr/src/app
RUN pip install --no-cache-dir poetry
COPY poetry.lock pyproject.toml ./
COPY . .
ENTRYPOINT [ "poetry","run", "python", "-m","unittest" ]

FROM python:3-alpine AS runtime

WORKDIR /usr/src/app
RUN pip install --no-cache-dir poetry
RUN poetry install
COPY poetry.lock pyproject.toml ./
COPY . .
ENTRYPOINT [ "poetry","run","python","-m", "cicdtest" ]
