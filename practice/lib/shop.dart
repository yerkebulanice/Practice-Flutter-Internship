import 'package:flutter/material.dart';
import 'package:practice/item_description.dart';
import 'my_orders_page.dart';

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            'Поощерения',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
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
        body: ShopList(),
      ),
    );
  }
}

class ShopList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(24, 0, 20, 0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyOrders()));
            },
            child: Row(
              children: [
                Text(
                  'Мои заказы',
                  style: TextStyle(fontSize: 22, color: Colors.blue[500]),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {},
                  color: Colors.blue[500],
                  iconSize: 30,
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: Colors.grey[600],
          height: 8,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
          margin: EdgeInsets.fromLTRB(24, 0, 20, 0),
          child: Text(
            'Поощерения',
            style: TextStyle(fontSize: 22),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ItemDescriptionPage(
                        image: "images/samokat.jpg",
                        nameOfThing: "Самокат Crytec w240",
                        point: "4000 баллов",
                      )),
            );
          },
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
            margin: EdgeInsets.fromLTRB(24, 0, 20, 0),
            child: Stack(
              children: [
                Image(
                  image: AssetImage('images/samokat.jpg'),
                  height: 300,
                  width: 384,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(230, 6, 0, 0),
                  height: 80,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Color(0xFF4D81BA),
                    border: Border.all(color: Color(0xFF4D81BA)),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      topLeft: Radius.circular(35),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '4000 баллов',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ItemDescriptionPage(
                        image: "images/velo.jpg",
                        nameOfThing: "Велосипед",
                        point: "6000 баллов",
                      )),
            );
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(24, 0, 20, 0),
            child: Stack(
              children: [
                Image(
                  image: AssetImage('images/velo.jpg'),
                  height: 300,
                  width: 384,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(230, 21, 0, 0),
                  height: 80,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Color(0xFF4D81BA),
                    border: Border.all(color: Color(0xFF4D81BA)),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      topLeft: Radius.circular(35),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '6000 баллов',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ItemDescriptionPage(
                        image: "images/velo.jpg",
                        nameOfThing: "Велосипед",
                        point: "6000 баллов",
                      )),
            );
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(24, 0, 20, 0),
            child: Stack(
              children: [
                Image(
                  image: AssetImage('images/velo.jpg'),
                  height: 300,
                  width: 384,
                  fit: BoxFit.fill,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(230, 0, 0, 0),
                  height: 80,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Color(0xFF4D81BA),
                    border: Border.all(color: Color(0xFF4D81BA)),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      topLeft: Radius.circular(35),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '5000 баллов',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
