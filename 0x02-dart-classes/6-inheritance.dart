import '6-password.dart';

class User extends Password {
  //properties
  String name = "";
  num age = 0;
  double height = 0;
  num id = 0;
  String user_password = "";
  
  //CONSTRUCTOR
  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required this.user_password,
  }) : super(password: user_password);

  //METHODS

  //convert User => Map
  Map toJson() {
    return {"id": id, "name": name, "age": age, "height": height};
  }

  //convert Map => User
  static User fromJson(Map<dynamic, dynamic> UserJson) {
    return User(
      id: UserJson["id"],
      name: UserJson["name"],
      age: UserJson["age"],
      height: UserJson["height"],
      user_password: UserJson["user_password"],
    );
  }

  @override
  String toString() {
    super.password = user_password;
    return "User(id : $id ,name: $name, age: $age, height: $height), Password: ${isValid()}";
  }
}
