class Password {
  //properties
  String? _password = "";

  //constructor
  Password({required String? password}) : _password = password ?? "";

  //getter
  String get password => _password ?? "";

  //setter
  set password(String newPassword){
    _password = newPassword;
  }

  //methods
  bool isValid() {
    final pwd = _password ?? "";

    final hasUpper = RegExp(r'[A-Z]').hasMatch(pwd);
    final hasLower = RegExp(r'[a-z]').hasMatch(pwd);
    final hasNum = RegExp(r'\d').hasMatch(pwd);
    final hasCorrectLength = pwd.length >= 8 && pwd.length <= 16;

    return hasUpper && hasLower && hasNum && hasCorrectLength;
  }

  @override
  String toString() {
    return "Your Password is: $_password";
  }
}
