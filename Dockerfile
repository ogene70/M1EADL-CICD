# Build stage
FROM python:3.12-slim AS builder
RUN pip install poetry
WORKDIR /app
COPY pyproject.toml poetry.lock ./
COPY src ./src
RUN poetry install --only main

# Runtime stage
FROM python:3.12-slim
WORKDIR /app
COPY --from=builder /usr/local /usr/local
COPY src ./src
CMD ["python", "-m", "cicdtest"]
