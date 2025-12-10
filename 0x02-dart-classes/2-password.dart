class Password{
  //properties
  String password = "";

  //constructor
  Password({required this.password});

  //methods
  bool isValid(){
    final hasUpper = RegExp(r'[A-Z]').hasMatch(password);
    final hasLower = RegExp(r'[a-z]').hasMatch(password);
    final hasNum = RegExp(r'\d').hasMatch(password);
    final hasCorrectLength = password.length >= 8 && password.length <= 16;

    return hasUpper && hasLower && hasNum && hasCorrectLength;
  }

  @override
  String toString(){
    return "Your Password is: $password";
  }
}