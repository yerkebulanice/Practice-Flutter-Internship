import 'package:flutter/material.dart';

class ItemDescriptionPage extends StatelessWidget {
  final String image;
  final String nameOfThing;
  final String point;

  ItemDescriptionPage({this.image, this.nameOfThing, this.point});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Поощерения',
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
        padding: EdgeInsets.fromLTRB(20, 14, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              nameOfThing,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 6,
            ),
            Image(
              image: AssetImage(image),
              height: 320,
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'У вас: ',
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.grey[400],
                  ),
                ),
                Text(
                  '525 баллов',
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.blue[600],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Необходимо: ',
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.grey[400],
                  ),
                ),
                Text(
                  point,
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.blue[600],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 14,
            ),
            SizedBox(
              height: 70,
              width: 380,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Оформить заказ',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue[800]),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'В наличии',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              '1 шт.',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Описание',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              'Самокат - средство передвижения, приводимое в движение путём отталкивания ногой от земли в положении стоя.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
