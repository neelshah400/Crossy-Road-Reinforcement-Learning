.PHONY: default clean clean-full srun create-venv create-conda-env install-hooks run-hooks validate compile compile-dev sync sync-dev sync-conda pdf

default:
	@echo "Please specify a target to run"

clean:
	rm -rf checkpoint.tar

clean-full:
	rm -rf *.pdf checkpoint.tar checkpoints/

srun:
	srun --partition=class --account=class --qos=high --gres=gpu:4 --pty bash

create-venv:
	uv venv

create-conda-env:
	conda env create -f environment.yml

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

sync-conda:
	conda env update --file environment.yml

pdf:
	jupyter nbconvert --to pdf "Crossy Road Reinforcement Learning.ipynb"
