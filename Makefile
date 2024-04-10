.PHONY: default clean venv install-hooks run-hooks validate compile compile-dev sync sync-dev pdf

default:
	@echo "Please specify a target to run"

clean:
	rm -rf *.pdf

venv:
	. .venv/bin/activate

install-hooks:
	pre-commit install

run-hooks:
	pre-commit run --all-files

validate:
	validate-pyproject pyproject.toml

compile:
	uv pip compile pyproject.toml -o requirements.txt

compile-dev:
	uv pip compile pyproject.toml --extra dev -o requirements-dev.txt

sync:
	uv pip sync requirements.txt

sync-dev:
	uv pip sync requirements-dev.txt

pdf:
	jupyter nbconvert --to pdf "Crossy Road Reinforcement Learning.ipynb"
