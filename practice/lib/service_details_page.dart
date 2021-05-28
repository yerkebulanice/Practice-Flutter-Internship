import 'package:flutter/material.dart';

class ServiceDetailsPage extends StatelessWidget {
  final String titlename;
  ServiceDetailsPage({this.titlename});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Голосования',
          style: TextStyle(
            fontSize: 26,
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
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          children: [
            Text(
              titlename,
              style: TextStyle(fontSize: 20, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            Image(
              image: AssetImage('images/serviceImage.png'),
              height: 220,
              width: 390,
            ),
            Text(
              'sjsdjgifjdsoijosjsdjgifjdsoijosjsdjgifjdsoijosjsdjgifjdsoijosjsdjgifjdsoijosjsdjgifjdsoijosjsdjgifjdsoijosjsdjgifjdsoijo',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'sjsdjgifjdsoijosjsdjgifjdsoijosjsdjgifjdsoijosjsdjgifjdsoijosjsdjgifjdsoijo',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 70,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 70,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 70,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey[300],
                        size: 70,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey[300],
                        size: 70,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Ваша оценка',
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text('3.58', style: TextStyle(fontSize: 28)),
                    Text('Оценок: 260', style: TextStyle(fontSize: 16)),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      '5',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '200',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 340,
                          height: 8,
                          child: LinearProgressIndicator(
                            value: 200 / 260,
                            backgroundColor: Colors.grey[300],
                            valueColor: new AlwaysStoppedAnimation<Color>(
                                Colors.yellow),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      '4',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          '30',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          width: 340,
                          height: 8,
                          child: LinearProgressIndicator(
                            value: 30 / 260,
                            backgroundColor: Colors.grey[300],
                            valueColor: new AlwaysStoppedAnimation<Color>(
                                Colors.yellow),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      '3',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey,
                    ),
                    Column(
                      children: [
                        Text(
                          '30',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          width: 340,
                          height: 8,
                          child: LinearProgressIndicator(
                            value: 15 / 260,
                            backgroundColor: Colors.grey[300],
                            valueColor: new AlwaysStoppedAnimation<Color>(
                                Colors.yellow),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      '2',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '30',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          width: 340,
                          height: 8,
                          child: LinearProgressIndicator(
                            value: 5 / 260,
                            backgroundColor: Colors.grey[300],
                            valueColor: new AlwaysStoppedAnimation<Color>(
                                Colors.yellow),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      '1',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          '30',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          width: 340,
                          height: 8,
                          child: LinearProgressIndicator(
                            value: 10 / 260,
                            backgroundColor: Colors.grey[300],
                            valueColor: new AlwaysStoppedAnimation<Color>(
                                Colors.yellow),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
