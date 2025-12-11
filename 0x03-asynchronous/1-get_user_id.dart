import 'dart:convert';

import '1-util.dart';

Future<String> getUserId() async {
  final rawData = await fetchUserData();
  final data = jsonDecode(rawData);
  return "${data["id"]}";
}