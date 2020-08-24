import 'package:email_validator/email_validator.dart';

class Validator {
  static String validateName(String text) {
    if (text.trim().isEmpty) return "Full name required.";
    return null;
  }

  static String validateNationalId(String text) {
    if (text.trim().isEmpty) return "National id required.";
    return null;
  }

  static String validateEmail(String text) {
    final entered = text.trim();
    if (entered.isEmpty) return "Email Required.";
    if (!EmailValidator.validate(entered)) {
      if (entered.isEmpty) return "Invalid email.";
    }
    return null;
  }

  static String validatePhoneNumber(String text) {
    if (text.trim().isEmpty) return "Phone number required.";
    return null;
  }

  static String validatePassword(String text) {
    if (text.isEmpty) return "Password required.";
    if (text.length < 6) return "Password must have 6 or more.";
    return null;
  }

  static String validateConfirmPassword(String text, String password) {
    if (text.isEmpty) return "Password required.";
    if (text != password) return "Password does not match.";
    return null;
  }

  static bool hasUrlPhoto(String url) {
    return url != null && url.isNotEmpty && url.startsWith("http");
  }
}
