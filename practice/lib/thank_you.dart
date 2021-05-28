import 'package:flutter/material.dart';

class ThankYouPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: false,
        title: Text(
          'Опросы',
          style: TextStyle(
            fontSize: 24,
          ),
          textAlign: TextAlign.left,
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
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.done_outlined,
              color: Colors.blue[800],
              size: 300,
            ),
            Text(
              'Благодарим за прохождение опроса',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Вам начисленно: ',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[400],
              ),
            ),
            Text(
              '50 баллов',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
