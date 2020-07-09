class ValidationMixin {
  String validateEmail(String email) {
    return email.contains('@') ? null : 'Enter a valid email address.';
  }

  String validatePassword(String pass) {
    return pass.length < 7 ? 'Enter more than 7 digits.' : null;
  }
}
