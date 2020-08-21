import 'package:flutter/material.dart';
import './screens/home.dart ';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Exploring  lists',
    home: Scaffold(
      appBar: AppBar(
        title: Text('This is a app bar and below are lists'),
      ),
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
        subtitle: Text('Accessibility settings'),
        trailing: Icon(Icons.add),
      ),
      ListTile(
          leading: Icon(Icons.add_alarm),
          title: Text('Alarm'),
          subtitle: Text('Tap to add alarms'),
          trailing: Icon(Icons.add),
        ),

    ],

      );
  return listview;
}
