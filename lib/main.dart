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
void  showSnackBar(BuildContext context , String item) {
  var snackBar = SnackBar(
    content: Text('You clicked $item'),
    action: SnackBarAction(
        label: "Undo",
        textColor: Colors.red,
        onPressed: ()
        {
          debugPrint('Performing undo for $item');
        }
        ),

  );
  Scaffold.of(context).showSnackBar(snackBar);
}
List<String> getElements()
{
  var items = List<String>.generate(10, (index) => "Item $index");
  return items;
}

Widget getList()
{
  var listitems = getElements();
  var listview = ListView.builder(
      itemCount: listitems.length,
      itemBuilder: (context,index)
      {
        return ListTile(
          title: Text(listitems[index]),
          onTap: () {
            debugPrint('Clicked ${listitems[index]}');
            showSnackBar(context,listitems[index]);
          }

        );
      }
  );
  return listview;
}
