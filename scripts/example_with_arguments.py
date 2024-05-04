import example_module1
import example_module2
import argparse


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='A simple command-line argument parser example')

    # Add arguments
    parser.add_argument('--number1', type=int, default=1)
    parser.add_argument('--number2', type=int, default=2)
    # Parse the arguments
    args = parser.parse_args()

    sum = example_module1.add_module1(args.number1, args.number2)
    multiplication = example_module2.multiplication_module2(args.number1, args.number2)

    print(f'The sum is {sum}, multiplication is {multiplication}.')
