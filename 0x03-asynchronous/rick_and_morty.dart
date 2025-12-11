import 'package:http/http.dart' as http;
import 'dart:convert';

Future printRmCharacters() async {
  try {
    final url = Uri.parse("https://rickandmortyapi.com/api/character");
    final res = await http.get(url);
    if (res.statusCode == 200) {
      final data = jsonDecode(res.body);
      for (var i in data["results"]){
        print(i["name"]);
      }
      return data;
    }
    return null;
  } catch (e) {
    return "error caught: $e";
  }
}
