import 'package:flutter/material.dart';
import './screens/home.dart ';
void main()
{  debugProfileBuildsEnabled :false;
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Exploring ',
    home: Home(),
  )
  );
}