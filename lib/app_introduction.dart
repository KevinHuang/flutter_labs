import 'package:flutter/material.dart';

class AppIntroductionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'An app introduction UI',
      home: AppIntroductionHomeWidget(),
    );
  }
}

class AppIntroductionHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _createBannerImage(),
          _createTitleArea(),
          _createButtonArea(context),
          _createDescriptionArea()
        ],
      ),
    );
  }
}

/// 建立 Title 區域
Widget _createTitleArea() {
  return Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: <Widget>[
        Expanded(
          /* 1 app name & company name */
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                /* 1.1 app name */
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text(
                    '1Campus App',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                /* 1.2 company name */
                Text(
                  'ischool, Inc',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ]),
        ),

        /* 顯示喜愛數量與狀態的 stateful widget */
        FavoriteWidget()
      ],
    ),
  );
}

/// 建立按鈕區域
Widget _createButtonArea(BuildContext context) {
  Color color = Theme.of(context).primaryColor;
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      _createButtonColumn(Icons.call, color, 'CALL'),
      _createButtonColumn(Icons.near_me, color, 'ROUTE'),
      _createButtonColumn(Icons.share, color, 'SHARE')
    ],
  );
}

/// 建立一個按鈕與 Label
Widget _createButtonColumn(IconData iconData, Color iconColor, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Icon(
        iconData,
        color: iconColor,
      ),
      Text(label,
          style: TextStyle(
            color: iconColor,
          ))
    ],
  );
}

/// 建立描述區域
Widget _createDescriptionArea() {
  return Container(
    padding: EdgeInsets.all(32.0),
    child: Text(
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
      'Alps. Situated 1,578 meters above sea level, it is one of the '
      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
      'half-hour walk through pastures and pine forest, leads you to the '
      'lake, which warms to 20 degrees Celsius in the summer. Activities '
      'enjoyed here include rowing, and riding the summer toboggan run.',
      softWrap: true,
    ),
  );
}

Image _createBannerImage() {
  return Image.asset(
    'images/lake.jpg',
    width: 600,
    height: 240,
    fit: BoxFit.cover,
  );
}

/// 建立 Stateful Widget 來顯示 Favorite Icon 與 Favorite Count
class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteState createState() {
    return _FavoriteState();
  }
}

class _FavoriteState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoritedCount = 9;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        /* 圖示按鈕 */
        Container(
          child: IconButton(
            icon: (_isFavorited
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),

        /* 顯示「最愛數量」的文字方塊, 使用 SizedBox 來固定 Text 的寬度，以免一直變動會影響 Icon 的位置，不好看 */
        SizedBox(
          width: 18,
          child: Container(
            child: Text('$_favoritedCount'),
          ),
        )
      ],
    );
  }

  _toggleFavorite() {
    setState(() {
      this._isFavorited = !this._isFavorited;
      if (this._isFavorited) {
        this._favoritedCount++;
      } else {
        this._favoritedCount--;
      }
    });
  }
}
