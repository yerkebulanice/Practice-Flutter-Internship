import 'package:flutter/material.dart';
import 'my_orders_page.dart';

class MyPointsPage extends StatefulWidget {
  @override
  _MyPointsPageState createState() => _MyPointsPageState();
}

class _MyPointsPageState extends State<MyPointsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            'Мои баллы',
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
        body: MyPointsList(),
      ),
    );
  }
}

class MyPointsList extends StatelessWidget {
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
        SizedBox(
          height: 6,
        ),
        Container(
          child: Column(
            children: [
              Text(
                'Текущий баланс',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[500],
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '355',
                style: TextStyle(
                  color: Color(0xFF4E80AF),
                  fontSize: 78,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Баллов',
                style: TextStyle(color: Color(0xFF4E80AF), fontSize: 14),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('История начисления и оплаты',
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.grey[600],
          height: 8,
        ),
        SizedBox(
          height: 4,
        ),
        Container(
          padding: EdgeInsets.only(left: 24, right: 24),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '30.01.2020 15:32',
                    style: TextStyle(color: Colors.grey[500], fontSize: 18),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Анкета "Домашние животные"',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Text(
                '+50 \nбаллов',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF4E80AF),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Divider(
          color: Colors.grey[600],
          height: 8,
        ),
        SizedBox(
          height: 4,
        ),
        Container(
          padding: EdgeInsets.only(left: 24, right: 24),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '30.01.2020 15:32',
                    style: TextStyle(color: Colors.grey[500], fontSize: 18),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Анкета "Домашние животные"',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Text(
                '+50 \nбаллов',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF4E80AF),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Divider(
          color: Colors.grey[600],
          height: 8,
        ),
      ],
    );
  }
}
