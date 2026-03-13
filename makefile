install:
	uv sync

lint:
	uv run ruff check src

format:
	uv run black src

test:
	uv run pytest

ruff:
	uv run ruff check src
	
run:
	uv run python src/main.py