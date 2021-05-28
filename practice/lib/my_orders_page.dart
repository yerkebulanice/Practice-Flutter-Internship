import 'package:flutter/material.dart';

class MyOrders extends StatefulWidget {
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Мои заказы',
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
      body: ListOfOrders(),
    );
  }
}

class ListOfOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image(
                image: AssetImage('images/samokat.jpg'),
                height: 150,
                width: 170,
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Самокат Crytec W240',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Стоимость: ',
                        style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                      ),
                      Text(
                        '4000 баллов',
                        style: TextStyle(fontSize: 16, color: Colors.blue[500]),
                      ),
                    ],
                  ),
                  Text(
                    'Описание',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Самокат - средство передви\nжения, приводимоев движение\nпутём отталкивания ногой \nот земли в положении стоя.',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.grey[600],
          height: 10,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Row(
            children: <Widget>[
              Image(
                image: AssetImage('images/velo.jpg'),
                height: 150,
                width: 170,
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Велосипед',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Стоимость: ',
                        style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                      ),
                      Text(
                        '6000 баллов',
                        style: TextStyle(fontSize: 16, color: Colors.blue[500]),
                      ),
                    ],
                  ),
                  Text(
                    'Описание',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Самокат - средство передви\nжения, приводимоев движение\nпутём отталкивания ногой \nот земли в положении стоя.',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
