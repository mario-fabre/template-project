FROM python:3.12-slim
WORKDIR /app
COPY pyproject.toml uv.lock* /app/
RUN pip install uv && uv export --format requirements.txt --output-file /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt
COPY . /app
CMD ["uv", "run", "python", "-m", "my_project.app"]