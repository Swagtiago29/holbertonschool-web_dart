import '2-util.dart';

Future<void> getUser() async {
  try{
    final rawData = await fetchUser();
    print(rawData);
    } catch (e){
      print("error caught: Cannot locate user");
    }
}