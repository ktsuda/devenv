FROM python:3.8.3-slim
WORKDIR /work
RUN pip install poetry
COPY ./work/pyproject.toml ./
RUN poetry install
