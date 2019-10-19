// import 'package:english_words/english_words.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:my_app2/app_introduction.dart';
import 'package:my_app2/hello_world.dart';
// import 'package:english_words/english_words.dart';
import 'my_app.dart';
import 'my_appbar.dart';

void main() {
  // final rootWidget = MyApp();
  // final rootWidget = HelloWorld() ;
  // final rootWidget = MyCustomAppBarApp();
  final rootWidget = AppIntroductionWidget();

  runApp(rootWidget);
} 

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(title: 'Welcome to Flutter App', home: RandomWords());
//   }
// }

// class RandomWordsState extends State<RandomWords> {
//   final List<WordPair> _suggestions = <WordPair>[];
//   final Set<WordPair> _saved = Set<WordPair>();
//   final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Welcome to Flutter'),
//         actions: <Widget>[
//           IconButton(icon: Icon(Icons.list), onPressed: _pushSaved,)
//         ],
//       ),
//       body: _buildSuggestions(),
//     );
//   }

//   void _pushSaved() {
//     print('list icon clicked!') ;
//   }

//   Widget _buildSuggestions() {
//     return ListView.builder(
//       padding: EdgeInsets.all(16),
//       itemBuilder: (context, i) {
//         if (i.isOdd) return Divider();

//         final index = i ~/ 2;
//         if (index >= _suggestions.length) {
//           _suggestions.addAll(generateWordPairs().take(10)); /*4*/
//         }
//         return _buildRow(_suggestions[index]);
//       },
//     );
//   }

//   Widget _buildRow(WordPair pair) {
//     final bool alreadySaved = _saved.contains(pair);

//     return ListTile(
//       title: Text(
//         pair.asPascalCase,
//         style: _biggerFont,
//       ),

//       trailing: Icon(
//         alreadySaved ? Icons.favorite : Icons.favorite_border,
//         color: alreadySaved ? Colors.red : null,
//       ),

//       onTap: () {
//         setState(() {
//           if (alreadySaved) {
//             _saved.remove(pair);
//           }
//           else {
//             _saved.add(pair);
//           }
//         });
//       },
//     );
//   }
// }

// class RandomWords extends StatefulWidget {
//   @override
//   RandomWordsState createState() {
//     return RandomWordsState();
//   }
// }
