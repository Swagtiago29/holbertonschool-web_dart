class User {
  //properties
  String name = "";
  num age = 0;
  double height = 0;

  //constructor
  User({required this.name, required this.age, required this.height});

  //methdos
  Map toJson() {
    return {"name": "$name", "age": "$age", "height": "$height"};
  }
}
