import 'package:flutter/material.dart';
import 'package:practice/questions_page.dart';

class OprosPage extends StatefulWidget {
  @override
  _OprosPageState createState() => _OprosPageState();
}

class _OprosPageState extends State<OprosPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text(
              'Опросы',
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
                  ],
                ),
              ),
            ),
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  width: 4,
                  color: Colors.white,
                ),
              ),
              tabs: [
                Tab(
                  child: Text(
                    'Актуальные',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                Tab(
                  child: Text(
                    'Прошедшие',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ActiveOpros(),
              HaveDoneOpros(),
            ],
          ),
        ),
      ),
    );
  }
}

class ActiveOpros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Домашние животные',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    '+30 баллов',
                    style: TextStyle(color: Colors.blue[500], fontSize: 17),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 32,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue[500]),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => QuestionsPage()),
                        );
                      },
                      child: Text(
                        'Участвовать',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
        Container(
          margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
          child: Column(
            children: [
              SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Спорт',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    '+50 баллов',
                    style: TextStyle(color: Colors.blue[500], fontSize: 17),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 32,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue[500]),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Участвовать',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class HaveDoneOpros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Домашние животные',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    '+30 баллов',
                    style: TextStyle(color: Colors.blue[500], fontSize: 17),
                  ),
                  Spacer(),
                  Text(
                    'Вы участвовали',
                    style: TextStyle(color: Colors.grey[400], fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
        Container(
          margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
          child: Column(
            children: [
              SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Спорт',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    '+50 баллов',
                    style: TextStyle(color: Colors.blue[500], fontSize: 17),
                  ),
                  Spacer(),
                  Text(
                    'Вы участвовали',
                    style: TextStyle(color: Colors.grey[400], fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
