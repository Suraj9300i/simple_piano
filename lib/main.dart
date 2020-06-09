import 'package:flutter/material.dart';

import 'MyCode.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Music App"),
          backgroundColor: Colors.pink.shade600,
        ),
        body: MyCode(),
      ),
    );
  }
}
