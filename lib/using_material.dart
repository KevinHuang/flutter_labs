

import 'package:flutter/material.dart';

class MyMaterialApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () => {},
          ),
          title: Text(
            '這是標題'
          ),
          actions: <Widget>[
            
          ],
        ) ,
        
      ),
    );
  }
}