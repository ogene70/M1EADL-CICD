FROM python:3 AS test

WORKDIR /usr/src/app
COPY poetry.lock pyproject.toml ./
RUN pip install --no-cache-dir poetry
COPY . .
ENTRYPOINT [ "poetry","run", "python", "-m","unittest" ]

FROM python:3 AS runtime

WORKDIR /usr/src/app
RUN pip install --no-cache-dir poetry
COPY poetry.lock pyproject.toml ./
RUN poetry install
COPY . .
ENTRYPOINT [ "poetry","run","python","-m", "cicdtest" ]
