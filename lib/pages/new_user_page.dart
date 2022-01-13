import 'package:flutter/material.dart';
import 'package:task1ui/controller/user_contoller.dart';
import 'package:task1ui/model/user_model.dart';

class NewUserPage extends StatefulWidget {
  const NewUserPage({ Key? key }) : super(key: key);

  @override
  _NewUserPageState createState() => _NewUserPageState();
}

class _NewUserPageState extends State<NewUserPage> {

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

        title: Text('All User History'),
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

                  return Row(
                    children: [
                     
                         Container(
                          height: 50,
                          width: 50,
                          child: Image.network('https://pgc.edu/wp-content/uploads/2021/05/How-to-Become-a-Special-Education-Teacher.jpg',fit: BoxFit.cover,),
                        ),
                       
                      
                      SizedBox(width: 5,),
                      Column(
                        children: [
                          Text('ID:${resData?[index].id.toString() ?? ""}'),
                          Text('name:${resData?[index].name ?? ""}'),
                           Text('username:${resData?[index].username ?? ""}'),
                            Text('email:${resData?[index].email ?? ""}'),
                             Text('address:${resData?[index].address?.street ?? ""}'),
                              Text('address:${resData?[index].address?.suite ?? ""}'),
                               Text('address:${resData?[index].address?.city ?? ""}'),
                                Text('address:${resData?[index].address?.zipcode ?? ""}'),
                                   Text('address:${resData?[index].address?.geo?.lat?? ""}'),
                                 Text('phone:${resData?[index].phone ?? ""}'),
                                  Text('website:${resData?[index].website ?? ""}'),
                                   Text('company:${resData?[index].company?.name?? ""}'),
                                   Text('company:${resData?[index].company?.bs?? ""}'),
                                   Text('company:${resData?[index].company?.catchPhrase?? ""}'),
                                   
                        ],
                      ),
                  
                     
                    ],
                  );
                });
            } else if(snapshot.hasError){
            
              print(snapshot.error);

            }
            return const CircularProgressIndicator();
          }
        
        
        ),
      ) ,
    );
  }
}