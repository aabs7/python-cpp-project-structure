VENV := venv
VENV_PYTHON = $(VENV)/bin/python3
VENV_PIP = $(VENV)/bin/pip

.PHONY: build
build: requirements.txt
	@python3 -m venv $(VENV)
	@$(VENV_PIP) install -r requirements.txt

.PHONY: test
test: PYTEST_FILTER ?= test
test: build
	@mkdir -p test_logs
	@$(VENV_PYTHON) -m pytest -vk $(PYTEST_FILTER) \
		-rsx \
		--full-trace \
		--ignore-glob=**/pybind11/* \
		--ignore-glob=**/scratch/* \
		--html=test_logs/report.html \
		./

.PHONY: clean
clean:
	@rm -rf .pytest_cache
	@rm -rf test_logs/
	@rm -rf $(VENV)
	@find . -type d -name '*.egg-info' -exec rm -rf {} +
	@find . -type d -name 'build' -exec rm -rf {} +
	@find . -type d -name '__pycache__' -exec rm -rf {} +
	@find . -type d -name '*.pytest_cache' -exec rm -rf {} +


# Add makefiles for modules here:
include scripts/Makefile.mk
include modules/example_module1/Makefile.mk
