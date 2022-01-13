import 'package:flutter/material.dart';
import 'package:task1ui/controller/user_contoller.dart';
import 'package:task1ui/model/user_model.dart';
import 'package:task1ui/pages/new_user_page.dart';

class UserPage extends StatefulWidget {
  const UserPage({ Key? key }) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {

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
         
        title: Text('User page'),
        actions: [
          IconButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder:
              (context)=>NewUserPage()));
          }, icon: Icon(Icons.history))
        ],
      ),
      body:Container(
        color: Colors.grey,
        child: FutureBuilder<List<UserModel>>(
          
          future: fetchAlbum(),
         // UserController.getdata(),

          builder:(context,snapshot){
            if(snapshot.hasData){
               List<UserModel>? resData = snapshot.data;
              return ListView.builder(
                itemCount: resData != null ? resData.length : 0,
                
                itemBuilder: (BuildContext context,int index){

                  return Column(
                    children: [
                      ListTile(
                        
                        leading: Container(
                          height: 50,
                          width: 50,
                          child: Image.network('https://pgc.edu/wp-content/uploads/2021/05/How-to-Become-a-Special-Education-Teacher.jpg',fit: BoxFit.cover,),
                        ),
                        title: Text(resData?[index].name ?? ""),
                        //Text(snapshot.data!.name!),
                        subtitle: Text(resData?[index].email ?? "")
                        //Text(snapshot.data!.email!.toString()),
                      
                      ),
                      Text('ID:${resData?[index].id.toString() ?? ""}'),
                   // Text(resData?[index].id.toString() ?? ""),
                    Text(resData?[index].address?.street ?? "")
                    // Text(snapshot.data!.id.toString()),
                     //Text(snapshot.data!.address!.toString()),
                     
                    ],
                  );
                });
            } else if(snapshot.hasError){
             // print('error throw');
              print(snapshot.error);

            }
            return const CircularProgressIndicator();
          }
        
        
        ),
      ) ,
    );
  }
}