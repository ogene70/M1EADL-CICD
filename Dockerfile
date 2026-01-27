# Build stage
FROM python:3.14-slim AS builder
RUN pip install poetry
WORKDIR /app
COPY pyproject.toml poetry.lock ./
COPY src ./src
COPY . .
RUN poetry install
CMD ["poetry","run","python", "-m","unittest"]
# CMD ["poetry","run","python","-m","unittest"]
