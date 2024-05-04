## Basic python with cpp project structure using Makefile and Venv

### Building the code
Run the following command to create the virtual environment
```make build```

### Test
```make test``` runs all the tests in this repository.
##### Filtering tests:
```make test PYTEST_FILTER=example_module_cpp``` runs test for example_module_cpp.
```make test PYTEST_FILTER=[some_string]``` runs all the test that has pattern ```[some_string]``` in it.
