class Password{
  //properties
  String _password = "";

  //constructor

  //methods
  bool isValid(){
    final hasUpper = RegExp(r'[A-Z]').hasMatch(_password);
    final hasLower = RegExp(r'[a-z]').hasMatch(_password);
    final hasNum = RegExp(r'\d').hasMatch(_password);
    final hasCorrectLength = _password.length >= 8 && _password.length <= 16;

    return hasUpper && hasLower && hasNum && hasCorrectLength;
  }

  @override
  String toString(){
    return "Your Password is: $_password";
  }
}