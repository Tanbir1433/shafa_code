

class Validator {

  String? validatePassword(String? value) {
    if (value!.isEmpty) {
      return 'Please enter password';
    } else if (value.length < 6) {
      return 'Password too short';
    }
    return null;
  }
}
