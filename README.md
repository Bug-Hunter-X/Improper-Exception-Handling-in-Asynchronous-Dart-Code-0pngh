# Improper Exception Handling in Asynchronous Dart Code

This repository demonstrates a common error in Dart: improper exception handling in asynchronous operations. The provided code fetches data from a URL and handles errors, but it does so generically without specifically addressing different types of exceptions.  This can make debugging difficult and may prevent the application from recovering gracefully.

The `bug.dart` file shows the problematic code. The `bugSolution.dart` provides a more robust solution.

## How to Reproduce
1. Clone this repository.
2. Run `bug.dart`.
3. Observe the generic error message.
4. Run `bugSolution.dart` for a better exception handling example.

## Solution
The improved version provides better exception handling by identifying specific exception types, handling them accordingly, and giving more insightful error messages.