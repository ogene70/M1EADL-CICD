# Build stage
FROM python:3.14-slim AS builder
RUN pip install poetry
WORKDIR /app
COPY pyproject.toml poetry.lock ./
COPY src ./src

# Runtime stage
FROM python:3.14-slim
WORKDIR /app
COPY --from=builder /usr/local /usr/local
COPY src ./src
COPY . .
CMD ["poetry","run","python","-m","unittest"]
