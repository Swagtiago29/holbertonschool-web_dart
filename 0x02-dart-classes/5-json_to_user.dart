class User {
  //properties
  String name = "";
  num age = 0;
  double height = 0;
  num id = 0;

  //CONSTRUCTOR
  User({required this.id, required this.name, required this.age, required this.height});

  //METHODS

  //convert User => Map
  Map toJson() {
    return {"id": "$id", "name": "$name", "age": "$age", "height": "$height"};
  }
  //convert Map => User
  static User fromJson(Map<dynamic, dynamic> UserJson){
    return User(id: UserJson["id"], name: UserJson["name"], age: UserJson["age"], height: UserJson["height"]);
  }
}
