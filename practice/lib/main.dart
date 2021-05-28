import 'package:flutter/material.dart';
import 'package:practice/additional.dart';
import 'package:practice/opros.dart';
// import 'package:practice/selection.dart';
import 'package:practice/shop.dart';
import 'my_points.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practice',
      theme: new ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Активный гражданин',
          style: TextStyle(
            fontSize: 26,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: <Color>[
                Color(0xFF4E80AF),
                Color(0xFF68B4BE),
              ])),
        ),
      ),
      body: GridViewCollection(),
    );
  }
}

class GridViewCollection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: GridView.count(
          padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
          mainAxisSpacing: 12,
          crossAxisCount: 3,
          children: [
            ItemsList('Голосования'),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OprosPage()));
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        border: Border(),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: <Color>[
                              Color(0xFF4E80AF),
                              Color(0xFF75CDC9),
                            ]),
                      ),
                      child: Icon(
                        Icons.thumb_up,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(),
                    Center(
                      child: Text(
                        'Опросы',
                        style: TextStyle(color: Colors.black, fontSize: 14.0),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ShopPage()));
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        border: Border(),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: <Color>[
                              Color(0xFF4E80AF),
                              Color(0xFF75CDC9),
                            ]),
                      ),
                      child: Icon(
                        Icons.card_giftcard,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(),
                    Center(
                      child: Text(
                        'Магазин поощрений',
                        style: TextStyle(color: Colors.black, fontSize: 14.0),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyPointsPage()));
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        border: Border(),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: <Color>[
                              Color(0xFF4E80AF),
                              Color(0xFF75CDC9),
                            ]),
                      ),
                      child: Icon(
                        Icons.attach_money,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(),
                    Center(
                      child: Text(
                        'Мои баллы',
                        style: TextStyle(color: Colors.black, fontSize: 14.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemsList extends StatelessWidget {
  final String title;
  ItemsList(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => KorzinaPage()));
            },
            child: Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border(),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: <Color>[
                    Color(0xFF4E80AF),
                    Color(0xFF75CDC9),
                  ],
                ),
              ),
              child: Icon(
                Icons.done_all,
                size: 50,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(),
          Center(
            child: Text(
              title,
              style: TextStyle(color: Colors.black, fontSize: 14.0),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
