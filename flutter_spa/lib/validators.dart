class Validators {
  static String emailValidator(String value)
  {
    if (value.isEmpty) {
      return 'Please enter email';
    }
    return null;
  }
  static String passwordValidator(String value)
  {
    if (value.isEmpty) {
      return 'Please enter password';
    }
    return null;
  }
}