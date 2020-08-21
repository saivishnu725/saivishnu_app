import 'package:flutter/material.dart';
import './screens/home.dart ';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Exploring  lists',
    home: Scaffold(
      body: getList(),
    )
  )
  );
}
Widget getList()
{
  var listview = ListView(
    children: 
    [
      ListTile(
        leading: Icon(Icons.accessibility),
        title: Text('Accessibility'),
        subtitle: Text('Icon of acc.'),
        trailing: Icon(Icons.add_alarm),
      )
    ],

      );
  return listview;
}