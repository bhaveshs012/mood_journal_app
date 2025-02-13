class Validator {
  static String? checkName(String? value) {
    if (value == null || value.isEmpty) {
      return "Name cannot be empty";
    }
    return null;
  }

  static bool checkEmail(String? value) {
    if (value == null || value.isEmpty) {
      return false;
    }
    final emailRegex = RegExp(
        r"/[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?/g");
    if (!emailRegex.hasMatch(value)) {
      return false;
    }
    return true;
  }
}
