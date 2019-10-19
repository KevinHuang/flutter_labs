

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

///
/// 自建的 AppBar ，包含左邊一個 menu icon, 中間擴展的 Title，以及右邊一個 icon。
/// 所以使用 Row 來包含三個元素： IconButton, Expanded, 以及 IconButton。
/// 但外圍再以一個 Container 包起來，可以設定 height, padding, 以及 decoration.
/// 另外中間的 title 是一個 Widget，可以透過 constructor 把一個 Widget 丟進來，不一定非得 Text(...)
///
class MyAppBar extends StatelessWidget {

  MyAppBar({this.title}) ;

  final Widget title ;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 80,
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, top:32.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: '導覽按鈕',
            color: Colors.white,
            splashColor: Colors.pink,
            onPressed: () => {
              print("navigtion ...")
            },
          ),
          Expanded(
            child: this.title,
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: '搜尋',
            onPressed: null,
          )
        ],
      ),
    );
  }
}


/**
 * 自訂的頁面架構，包含 MyAppBar, 以及內容
 */
class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Material(
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
              '自訂的 AppBar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),
              textAlign: TextAlign.center,
              
            ),
            
          ),
          Expanded(
            child: Text('這是內容'),
          )
        ],
      ),
    );
  }
}

class MyCustomAppBarApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: '自訂 AppBar',
      home: MyScaffold(),
    ) ;
  }
}