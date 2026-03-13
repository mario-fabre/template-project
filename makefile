install:
	uv sync

lint:
	uv run ruff src

format:
	uv run black src

test:
	uv run pytest

run:
	uv run python src/template_project/main.py