import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        drawer: _myDrawer(),
        appBar: AppBar(
          title: Text('My First App Title'),
          centerTitle: true,
        ),
        body:_myListView(),
      ) 
      
    );
  }
Widget _myDrawer(){
  return Drawer(
          child:ListView(
            children:[
              ListTile(
                title:Text('Menuo  1'),
                onTap:(){
                print('you clicked me!');
              },
              ),
                ListTile(
                title:Text('Menu  2'),
                onTap:(){
                print('you clicked me!');
              },
              ),  ListTile(
                title:Text('Menu 3'),
                onTap:(){
                print('you clicked me!');
              },
              ),
            ]
          )
        );
}

Widget _myListView(){
  return ListView(
          children:[
            ListTile(
              title:Text('Item 1'),
              onTap:(){
                print('you clicked me!');
              }),
              ListTile(
              title:Text('Item 2'),
              onTap:(){
                print('you clicked me!');
              }),
              ListTile(
              title:Text('Item 3'),
              onTap:(){
                print('you clicked me!');
              }),
              ListTile(
              title:Text('Item 4'),
              onTap:(){
                print('you clicked me!');
              }),
              ListTile(
              title:Text('Item 5'),
              onTap:(){
                print('you clicked me!');
              }),


          ],
        ); 
}
}