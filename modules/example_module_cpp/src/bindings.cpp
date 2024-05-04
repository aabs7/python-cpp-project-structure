#include <pybind11/pybind11.h>
#include "multiplication.hpp"

PYBIND11_MODULE(example_module_cpp, m) {
    m.def("multiply", &multiply, "A cpp function which multiplies two numbers");
}
