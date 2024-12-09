# Ada Input Validation and Exception Handling

This example demonstrates a common issue in Ada programs: inadequate input validation and less-than-ideal exception handling.  The `Main` procedure attempts to read an integer from the user; however, it doesn't handle the potential exception raised by `Get` if the user inputs non-numeric data. The `Check_Range` function also includes a generic exception handler which could mask other potential errors.

The solution provides improved error handling and input validation to prevent unexpected program termination and provide more informative error messages.