import 'package:flutter/material.dart';
import 'package:task1ui/pages/news_page.dart';
import 'package:task1ui/pages/userpage.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Profiel page'),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context,
             MaterialPageRoute(builder: (context)=>NewsPage()));
          }, icon: Icon(Icons.fiber_new_sharp))
        ],

        
      ),
      body:SingleChildScrollView(
        child: Container(
          color: Colors.grey,
          child: Column(
          children: [
            Container(
             // color: Colors.white24,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Center(child: Image.network('https://pgc.edu/wp-content/uploads/2021/05/How-to-Become-a-Special-Education-Teacher.jpg',fit: BoxFit.cover,))
                    
                    ),
                    
                    
                ],
              ),
            ),
            Text('Ramesh Mana ',style: TextStyle(fontSize: 20,color: Colors.black),),
             Text('Manager ',style: TextStyle(color: Colors.black),),
             Row(mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 
                 Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>UserPage()));
                          }, icon: Icon(Icons.edit,color: Colors.black,))),
               ],
             ),
             Row(
               children: [
                 Text('User Infomation'),
               ],
             ),
             
             Container(
               color: Colors.white,
               child: Column(
                 children:[
                   ListTile(
      leading: Icon(Icons.location_searching_outlined),
      title: Text('Location'),
      subtitle: Text('lahore'),
      onTap: (){},
      
      
      ),
      Divider(),
      ListTile(
      leading: Icon(Icons.email),
      title: Text('Email'),
      subtitle: Text('studen@gmail.com'),
      onTap: (){},
      
      
      ),
      Divider(),
      ListTile(
      leading: Icon(Icons.call),
      title: Text('Phone'),
      subtitle: Text('99-55586-9887'),
      onTap: (){},
      
      
      ),
      Divider(),
      ListTile(
      leading: Icon(Icons.person),
      title: Text('About Me'),
      subtitle: Text('this is a about me link and you\n can know aboute me. '),
      onTap: (){},
      
      
      ),
      Divider(),
                 ]
               ),
             ),
             SizedBox(height: 30,),
             Row(
               
               children: [
               
               Text('User Information'),
             ],),
             /// 2nd 
              Container(
                  color: Colors.white,
               child: Column(
                 children:[
                   ListTile(
      leading: Icon(Icons.location_searching_outlined),
      title: Text('Location'),
      subtitle: Text('lahore'),
      onTap: (){},
      
      
      ),
      Divider(),
      ListTile(
      leading: Icon(Icons.email),
      title: Text('Email'),
      subtitle: Text('studen@gmail.com'),
      onTap: (){},
      
      
      ),
      Divider(),
      ListTile(
      leading: Icon(Icons.call),
      title: Text('Phone'),
      subtitle: Text('99-55586-9887'),
      onTap: (){},
      
      
      ),
      Divider(),
      ListTile(
      leading: Icon(Icons.person),
      title: Text('About Me'),
      subtitle: Text('this is a about me link and you\n can know aboute me. '),
      onTap: (){},
      
      
      ),
      Divider(),
                 ]
               ),
             ),
          ],
        ),
        ),
      ),
    );
  }
}