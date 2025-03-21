import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(questionText: '1+1=2', questionAnswer: true),
    Question(questionText: '2x2=5.', questionAnswer: false),
    Question(questionText: '10+10=20', questionAnswer: true),
    Question(questionText: '6+6=12', questionAnswer: true),
    Question(questionText: '5x5=25', questionAnswer: true),
    Question(questionText: '6x7=42', questionAnswer: true),
    Question(questionText: '5x4=22', questionAnswer: false),
    Question(questionText: '7+7=14', questionAnswer: true),
    Question(questionText: '7x8=58', questionAnswer: false),
    Question(questionText: '2x3=6', questionAnswer: true),
    Question(questionText: '7x7=49', questionAnswer: true),
    Question(questionText: '8x6=48', questionAnswer: true),
    Question(questionText: '7+8=15', questionAnswer: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
