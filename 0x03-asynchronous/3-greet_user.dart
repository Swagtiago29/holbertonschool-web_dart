import 'dart:convert';

import '3-util.dart';

Future<String> greetUser() async {
  try {
    final rawData = await fetchUserData();
    final data = jsonDecode(rawData);
    return "Hello ${data["username"]}";
  } catch (e) {
    return("error caught: $e");
  }
}

Future<String> loginUser() async{
  try {
  final credentials = await checkCredentials();
  if(credentials){
    print("There is a user: true");
    return await greetUser();
  }
  print("There is a user: false");
  return "Wrong credentials";
  } catch (e){
    return("error caught: $e");
  }
}

