import 'package:flutter/material.dart';  
  
void main() {  
  runApp(const MaterialApp( home: UserList(),));  
}  
  
class UserList extends StatefulWidget {
  const UserList({super.key});
  
  @override  
  // ignore: library_private_types_in_public_api
  _UserListState createState() => _UserListState();  
}

class _UserListState  extends State<UserList> {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
        appBar: AppBar(  
          title: const Text('Flutter TextField Example'),  
        ),  
        body: Padding(  
            padding: const EdgeInsets.all(15),  
            child: Column(  
              children: const <Widget>[  
                Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),   
                      hintText: 'Add Comment',  
                    ),  
                  ),  
                ),  
              ],  
            )  
        )  
    );  
  }  
}  