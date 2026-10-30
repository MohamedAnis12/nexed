class AppValidators {
  static String? requiredField(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'This field is required';
    }
    return null;
  }

  static String? email(String? value) {
    final requiredError = requiredField(value);

    if (requiredError != null) {
      return requiredError;
    }

    if (!value!.contains('@')) {
      return 'Invalid email';
    }

    return null;
  }

  static String? password(String? value) {
    final requiredError = requiredField(value);

    if (requiredError != null) {
      return requiredError;
    }

    if (value!.length < 6) {
      return 'Password must be at least 6 characters';
    }

    return null;
  }
}