import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:task1ui/model/news_model.dart';


// Future<List<NewsModel>> fetchNews() async {
//   final response =
//       await http.get(Uri.parse('https://newsapi.org/v2/everything?q=tesla&from=2021-12-12&sortBy=publishedAt&apiKey=a80aad8a17dc46089a176be9c73e5724'));

//   if (response.statusCode == 200) {
//     // If the server did return a 200 OK response,
//     // then parse the JSON.

//     List<NewsModel> news = [];
//     //news

//     List<dynamic> newsJson = jsonDecode(response.body);

//     newsJson.forEach(
//       (oneNew) {
//         NewsModel news1 = NewsModel.fromJson(oneNew);
//         news.add(news1);
//       },
//     );

//     return news;
//   } else {
//     // If the server did not return a 200 OK response,
//     // then throw an exception.
//     throw Exception('Failed to load album');
//   }
// }


///// new////
 class NewsController{

 static Future<NewsModel> getdata() async{

    final response= await http.get(Uri.parse('https://newsapi.org/v2/everything?q=tesla&from=2021-12-13&sortBy=publishedAt&apiKey=a80aad8a17dc46089a176be9c73e5724'));
  if(response.statusCode==200){
    print(response.body);
     //print("===========>>>>>${jsonDecode(response.body)}");

    return NewsModel.fromJson(jsonDecode(response.body));
    // print('response ${response.body}');
    // // ignore: prefer_typing_uninitialized_variables
    // var jsonresponse;
    // return
    // //User.fromJson(jsonresponse[0]);
    //  UserModel.fromJson(jsonDecode(response.body));
  }else{

    throw Exception('Fail to data');
  }

  }
}