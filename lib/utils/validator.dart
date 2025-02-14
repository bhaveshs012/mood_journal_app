class Validator {
  static String? checkName(String? value) {
    if (value == null || value.isEmpty) {
      return "Name cannot be empty";
    }
    return null;
  }

  static String? checkEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email cannot be empty";
    }
    final emailRegex = RegExp(r"^[\w\.-]+@[\w\.-]+\.\w{2,}$");
    if (!emailRegex.hasMatch(value)) {
      return "Please enter a valid email";
    }
    return null;
  }

  static String? checkPassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password cannot be empty";
    }
    if (value.length < 8 || value.length > 15) {
      return "The password must be of the size 8 to 15";
    }
    final passRegex =
        RegExp(r"^(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$");
    if (!passRegex.hasMatch(value)) {
      return "Password should be at least one capital letter, \none small letter, one number and 8 character length";
    }
    return null;
  }
}
