## Basic python with cpp project structure using Makefile and Venv
### Structure
```bash
├── LICENSE
├── Makefile
├── README.md
├── modules
│   ├── example_module_python_1
│   ├── example_module_python_2
│   └── example_module_cpp
├── requirements.txt
├── scripts
│   ├── Makefile.mk
│   └── some_scripts_for_all_modules.py
├── tests
│   └── some_test_for_all_modules.py
```

### Building the code
Run the following command to create the virtual environment and install all cpp and python modules inside [modules](https://github.com/aabs7/python-cpp-project-structure/tree/main/modules)


```make build```

### Test
```make test``` runs all the tests in this repository.
##### Filtering tests:
```make test PYTEST_FILTER=example_module_cpp``` runs test for example_module_cpp.

```make test PYTEST_FILTER=[some_string]``` runs all the test that has pattern ```[some_string]``` in it.

### Clean
```make clean``` removes all the build and automatically generated files. By default, these files are included in *.gitignore*
