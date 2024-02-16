VENV := venv
VENV_PYTHON = $(VENV)/bin/python3
VENV_PIP = $(VENV)/bin/pip

.PHONY: build
build: requirements.txt
	@python3 -m venv $(VENV)
	@$(VENV_PIP) install -r requirements.txt

.PHONY: test
test: build
	@. venv/bin/activate && pytest -svk tests

.PHONY: run
run: build
	@$(VENV_PYTHON) -m scripts.main

.PHONY: clean
clean:
	@rm -rf .pytest_cache
	@rm -rf */__pycache__
	@rm -rf $(VENV)
