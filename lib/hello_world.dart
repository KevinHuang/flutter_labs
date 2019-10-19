

import 'package:flutter/cupertino.dart';

class HelloWorld extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Text(
        'Hello Flutter',
        textDirection: TextDirection.ltr,  
      ),
    );
  }
}