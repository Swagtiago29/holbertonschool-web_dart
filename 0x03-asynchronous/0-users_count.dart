import '0-util.dart';

Future<void> usersCount() async {
  final data = await fetchUsersCount();
  print(data);
}