.PHONY: run-scripts-with-arguments
run-scripts-with-arguments: build
	@$(VENV_PYTHON) scripts/example_with_arguments.py \
		--number1 20 \
		--number2 2
