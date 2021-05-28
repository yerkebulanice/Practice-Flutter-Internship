import 'package:flutter/material.dart';

class KorzinaPage extends StatefulWidget {
  @override
  _KorzinaPageState createState() => _KorzinaPageState();
}

class _KorzinaPageState extends State<KorzinaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            'Корзина',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
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
      ),
      body: Add(),
    );
  }
}

class Add extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(19, 0, 19, 64),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('images/korzina.png'),
              height: 250,
              width: 340,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Ой,пусто!',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'Ваша корзина пуста, откройте «Меню»\nи выберите понравившийся товар.\nМы доставим ваш заказ от 2250 ₸',
              style: TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 18,
            ),
            SizedBox(
              height: 48,
              width: 277,
              child: TextButton(
                child: Text(
                  'Перейти в меню',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                  ),
                ),
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFFE17122)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            side: BorderSide(color: Color(0xFFE17122))))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
