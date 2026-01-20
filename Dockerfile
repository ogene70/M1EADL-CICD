# --------------------
# Stage 1: Tests
# --------------------
FROM python:3.14-slim AS test

WORKDIR /usr/src/app

RUN pip install --no-cache-dir poetry

COPY pyproject.toml poetry.lock ./
COPY src ./src
RUN poetry --version

COPY . .

ENTRYPOINT ["poetry", "run", "python", "-m", "unittest"]


# --------------------
# Stage 2: Runtime
# --------------------
# FROM python:3.14-slim AS runtime

# WORKDIR /usr/src/app

# RUN pip install poetry
# COPY pyproject.toml poetry.lock ./
# COPY src ./src
# RUN poetry install
# COPY . .

# CMD ["poetry", "run", "cicdtest"]
