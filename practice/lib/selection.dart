import 'package:flutter/material.dart';
import 'package:practice/service_details_page.dart';

class SelectionPage extends StatefulWidget {
  @override
  _SelectionPageState createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Голосования',
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
      body: ListView(
        padding: EdgeInsets.fromLTRB(0, 25, 0, 10),
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ServiceDetailsPage(
                              titlename: 'Новый сервис "Благотворительность"',
                            )));
              },
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Городские новинки',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        height: 30,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Оценить',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue[500]),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Новый сервис "Благотворительность"',
                        style: TextStyle(
                          color: Colors.blue[500],
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Text(
                        'Средняя оценка',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey[400],
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey[400],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatavdatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ServiceDetailsPage(
                              titlename: 'Новый сервис 1',
                            )));
              },
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Городские новинки',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        height: 30,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Оценить',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue[500]),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Новый сервис 1',
                        style: TextStyle(
                          color: Colors.blue[500],
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Text(
                        'Средняя оценка',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey[400],
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey[400],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatavdatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ServiceDetailsPage(
                              titlename: 'Новый сервис 2',
                            )));
              },
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Городские новинки',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        height: 30,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Оценить',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue[500]),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Новый сервис 2',
                        style: TextStyle(
                          color: Colors.blue[500],
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Text(
                        'Средняя оценка',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey[400],
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey[400],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatavdatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ServiceDetailsPage(
                              titlename: 'Новый сервис 3',
                            )));
              },
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Городские новинки',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        height: 30,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Оценить',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue[500]),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Новый сервис 3',
                        style: TextStyle(
                          color: Colors.blue[500],
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Text(
                        'Средняя оценка',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey[400],
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey[400],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatavdatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ServiceDetailsPage(
                              titlename: 'Новый сервис last',
                            )));
              },
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Городские новинки',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        height: 30,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Оценить',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue[500]),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Новый сервис last',
                        style: TextStyle(
                          color: Colors.blue[500],
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Text(
                        'Средняя оценка',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey[400],
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey[400],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatavdatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
