import 'package:flutter/material.dart';
import 'package:task1ui/controller/news_controller.dart';
import 'package:task1ui/controller/user_contoller.dart';
import 'package:task1ui/model/news_model.dart';
import 'package:task1ui/model/user_model.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  // late Future<User> futuredata;
  //  @override
  // void initState() {
  //   super.initState();
  //   futuredata = getdata();
  // }
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GB News'),
      ),
      body: Container(
        color: Colors.grey,
        child: FutureBuilder<NewsModel>(
            future: NewsController.getdata(),
            // UserController.getdata(),

            builder: (context, snapshot) {
              if (snapshot.hasData) {
                // List<NewsModel>? resData = snapshot.data;
                return ListView.builder(
                    //itemCount: 1,
                    //resData != null ? resData.length : 0,

                    itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      // Text('Totalresult:${snapshot.data!.totalResults.toString()}'),
                      //Text('Status:${snapshot.data!.status}'),
                      //SizedBox(height: 30,),
                      Container(
                        decoration: BoxDecoration(
                           border: Border.all(color: Colors.green, width: 4),  
                          //color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                          //shape: RoundedRectangleBorder(borderRadius: )
                        ),
                        child: Column(
                          children: snapshot.data!.articles!
                              .map((e) => Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                            ),
                                            height: 150,
                                            width: 150,
                                            child: Image.network(
                                              e.urlToImage!,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text('Name: ${e.source!.name}'),
                                          Text('auther: ${e.author}'),
                                         // Text('Title: ${e.title}'),
                                        ],
                                      )

                                      // Text('Title: ${e.title}'),
                                      // Text('Descripation: ${e.description}'),
                                      // Text('Date publish:${e.publishedAt!}'),
                                      // Text('Content: ${e.content}'),

                                      // Container(
                                      //   height: 100,
                                      //   width: 100,
                                      //   child:Image.network(e.urlToImage!) ,
                                      // ),
                                      //  Container(
                                      //   height: 100,
                                      //   width: 100,
                                      //   child:Image.network(e.url!) ,
                                      // )
                                    ],
                                  ))
                              .toList(),
                        ),
                      ),
                    ],
                  );
                });
              } else if (snapshot.hasError) {
                print(snapshot.error);
              }
              return const CircularProgressIndicator();
            }),
      ),
    );
  }
}
