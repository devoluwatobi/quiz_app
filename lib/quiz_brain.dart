import 'questions.dart';

int questionNum = 0;

class QuizBrain {
  List<Question> _questionBank = [
    Question(q: 'Some cats are actually allergic to humans', a: true),
    Question(
      q: 'You can lead a cow downstairs but not upstairs',
      a: false,
    ),
    Question(
      q: 'Approximately one quater of the human bones are in the feet',
      a: true,
    ),
    Question(
      q: 'A Slug\'s blood is green. ',
      a: true,
    ),
    Question(q: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', a: true),
    Question(q: 'It is illegal to pee in the Ocean in Portugal.', a: true),
    Question(
        q: 'No piece of square dry paper can be folded in half more than 7 times.',
        a: false),
    Question(
        q: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        a: true),
    Question(
        q: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        a: false),
    Question(
        q: 'The total surface area of two human lungs is approximately 70 square metres.',
        a: true),
    Question(q: 'Google was originally called \"Backrub\".', a: true),
    Question(
        q: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        a: true),
    Question(
        q: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        a: true),
  ];
  void nextQuestion() {
    if (questionNum < _questionBank.length - 1) {
      questionNum++;
    }
  }

  String getQuestion() {
    return _questionBank[questionNum].questionText;
  }

  bool getAnswer() {
    return _questionBank[questionNum].questionAnswer;
  }

  bool isFinished() {
    bool value;
    if (questionNum == _questionBank.length - 1) {
      value = true;
    } else {
      value = false;
    }
    print('The isFinished method returns $value');
    return value;
  }

  void reset() {
    questionNum = 0;
  }
}
