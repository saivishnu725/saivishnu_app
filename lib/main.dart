import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:saivishnu_app/screens/home.dart';
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
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        debugPrint('Clicked');
        },
        tooltip: 'Add one more item',
        child: Icon(Icons.add),
      ),
    )
  )
  );
}

List<String> getElements()
{
  var items = List<String>.generate(100, (index) => "Item $index");
  return items;
}

Widget getList()
{
  var listitems = getElements();
  var listview = ListView.builder(
      itemBuilder: (context,index)
      {
        return ListTile(
          title: Text(listitems[index]),
        );
      }
  );
  return listview;
}
