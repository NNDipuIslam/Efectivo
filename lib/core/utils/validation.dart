// Email Validation
bool isValidEmail(String? inputString, {bool isRequired = false}) {
  bool isInputStringValid = false;

  // Check if the email is required and empty
  if (isRequired && (inputString == null || inputString.isEmpty)) {
    return false;
  }

  // Check if inputString is not empty
  if (inputString != null && inputString.isNotEmpty) {
    // Define the regular expression for email validation
    const pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    final regExp = RegExp(pattern);

    // Check if inputString matches the regular expression
    isInputStringValid = regExp.hasMatch(inputString);
  }

  return isInputStringValid;
}

// Password Validation
bool isValidPassword(String? inputString, {bool isRequired = false}) {
  bool isInputStringValid = false;

  // Check if the password is required and empty
  if (isRequired && (inputString == null || inputString.isEmpty)) {
    return false;
  }

  // Check if inputString is not empty
  if (inputString != null && inputString.isNotEmpty) {
    // Define the regular expression for password validation
    const pattern = r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@#$%"&+=])[^\s]{4,}$';
    final regExp = RegExp(pattern);

    // Check if inputString matches the regular expression
    isInputStringValid = regExp.hasMatch(inputString);
  }

  return isInputStringValid;
}
