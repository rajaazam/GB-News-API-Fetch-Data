import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:task1ui/model/user_model.dart';

// class UserController{

//  static Future<UserModel> getdata() async{

//     final response= await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
//   if(response.statusCode==200){
//     print(response.body);
//      print("===========>>>>>${jsonDecode(response.body)}");

//     return UserModel.fromJson(jsonDecode(response.body));
//     // print('response ${response.body}');
//     // // ignore: prefer_typing_uninitialized_variables
//     // var jsonresponse;
//     // return
//     // //User.fromJson(jsonresponse[0]);
//     //  UserModel.fromJson(jsonDecode(response.body));
//   }else{

//     throw Exception('Fail to data');
//   }

//   }
// }

////
///
///
///
/// When the Api Data in List into Map then use this type
Future<List<UserModel>> fetchAlbum() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.

    List<UserModel> albums = [];

    List<dynamic> albumsJson = jsonDecode(response.body);

    albumsJson.forEach(
      (oneAlbum) {
        UserModel album = UserModel.fromJson(oneAlbum);
        albums.add(album);
      },
    );

    return albums;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
