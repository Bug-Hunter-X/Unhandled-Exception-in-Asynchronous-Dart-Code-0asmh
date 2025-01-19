# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in Dart: improperly handling exceptions within asynchronous functions. The `bug.dart` file showcases the flawed code, while `bugSolution.dart` provides the corrected version.

The issue arises from not properly handling exceptions thrown during asynchronous operations.  The solution emphasizes the importance of catching and rethrowing exceptions to handle them appropriately at various levels of the call stack.

## How to run

1. Clone the repository.
2. Run `dart bug.dart` to see the original error handling (or lack thereof).
3. Run `dart bugSolution.dart` to see the corrected code and proper exception handling.