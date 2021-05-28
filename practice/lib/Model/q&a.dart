class QuestionAndAnswers {
  String question;
  String answer1;
  String answer2;

  QuestionAndAnswers({this.question, this.answer1, this.answer2});

  static List<QuestionAndAnswers> getQuestions() {
    return <QuestionAndAnswers>[
      QuestionAndAnswers(
        question: "1. У вас есть домашний питомец?",
        answer1: "Да",
        answer2: "Нет",
      ),
      QuestionAndAnswers(
        question: "2. Вы владелец...",
        answer1: "Кошки",
        answer2: "Собаки",
      ),
      QuestionAndAnswers(
        question: "3. Ваш питомец пародичтый",
        answer1: "Да",
        answer2: "Нет",
      ),
      QuestionAndAnswers(
        question: "4. Питомца кормите...",
        answer1: "Сухим кормом",
        answer2: "Натуральной едой",
      ),
      QuestionAndAnswers(
        question: "5. Пользуетесь ли услугами грумера?",
        answer1: "Да",
        answer2: "Нет",
      ),
      QuestionAndAnswers(
        question: "6. Пользуетесь ли услугами дрисировщика?",
        answer1: "Да",
        answer2: "Нет",
      ),
      QuestionAndAnswers(
        question: "7. Есть ли у вашего питомца чип?",
        answer1: "Да",
        answer2: "Нет",
      ),
    ];
  }
}
