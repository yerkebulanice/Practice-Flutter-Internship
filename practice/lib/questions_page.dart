import 'package:flutter/material.dart';
import 'thank_you.dart';

class QuestionsPage extends StatefulWidget {
  @override
  _QuestionsPageState createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            'Опросы',
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
        body: QuestionsList(),
      ),
    );
  }
}

class QuestionsList extends StatefulWidget {
  @override
  _QuestionsListState createState() => _QuestionsListState();
}

class _QuestionsListState extends State<QuestionsList> {
  // List<QuestionAndAnswers> questionsandanswers;
  // QuestionAndAnswers selectedQuestion;

  // @override
  // void initState() {
  //   super.initState();
  //   questionsandanswers = QuestionAndAnswers.getQuestions();
  // }

  // setSelectedQuestion(QuestionAndAnswers question) {
  //   setState(() {
  //     selectedQuestion = question;
  //   });
  // }

  // List<Widget> createRadioListQuestions() {
  //   List<Widget> widgets = [];
  //   for (QuestionAndAnswers question in questionsandanswers) {
  //     widgets.add(
  //       Column(
  //         mainAxisAlignment: MainAxisAlignment.start,
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: <Widget>[
  //           Container(
  //             padding: EdgeInsets.fromLTRB(26, 10, 16, 10),
  //             child: Text(
  //               question.question,
  //               style: TextStyle(fontSize: 18),
  //               textAlign: TextAlign.left,
  //             ),
  //           ),
  //           RadioListTile(
  //             value: question,
  //             groupValue: selectedQuestion,
  //             title: Text(
  //               question.answer1,
  //               style: TextStyle(color: Colors.black),
  //             ),
  //             onChanged: (currentQuestion) {
  //               setSelectedQuestion(currentQuestion);
  //             },
  //             selected: selectedQuestion == question,
  //           ),
  //           RadioListTile(
  //             value: question,
  //             groupValue: selectedQuestion,
  //             title: Text(
  //               question.answer2,
  //               style: TextStyle(
  //                 fontSize: 18,
  //                 color: Colors.black,
  //               ),
  //             ),
  //             onChanged: (currentQuestion) {
  //               setSelectedQuestion(currentQuestion);
  //             },
  //             selected: selectedQuestion == question,
  //           ),
  //         ],
  //       ),
  //     );
  //   }
  //   return widgets;
  // }

  @override
  Widget build(BuildContext context) {
    int _value1 = 1;
    return ListView(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(28, 8, 16, 8),
          child: Text(
            'Домашние животные',
            style: TextStyle(fontSize: 22),
          ),
        ),
        Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Radio(
                  value: 1,
                  groupValue: _value1,
                  onChanged: (value) {
                    setState(() {
                      _value1 = value;
                    });
                  },
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Да',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Radio(
                  value: 2,
                  groupValue: _value1,
                  onChanged: (int value) {
                    setState(() {
                      _value1 = value;
                    });
                  },
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Нет',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(100, 8, 100, 40),
          child: SizedBox(
            // width: 40,
            height: 40,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThankYouPage(),
                  ),
                );
              },
              child: Text(
                'Отправить',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blue[700]),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
