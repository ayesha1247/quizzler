import 'QnA.dart';

class QuizBrains {
  int _qn = 0;
  // ignore: non_constant_identifier_names
  List _QuestionsBank = [
    Questions('You can lead a cow down stairs but not up stairs.', false),
    Questions(
      'Approximately one quarter of human bones are in the feet.',
      true,
    ),
    Questions(
      "A slug's blood is green.",
      true,
    ),
    Questions(
      'Abraham lincoln had no middle name',
      true,
    ),
    Questions(
      'Before becoming queen, Queen Elizabeth was a mechanic',
      true,
    ),
    Questions(
      'Cows sleep standing up',
      true,
    ),
    Questions(
      'Donald Duck’s sister is named Donna',
      false,
    ),
    Questions(
      'Fortune cookies were invented in China',
      false,
    ),
  ];
  void nextQuestion() {
    if (_qn < _QuestionsBank.length - 1) {
      _qn++;
    }
  }

  String getQuestionText() {
    return _QuestionsBank[_qn].questionText;
  }

  bool getAnswers() {
    return _QuestionsBank[_qn].answerOfQuestion;
  }

  bool isFinished() {
    if (_qn >= _QuestionsBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _qn = 0;
  }
}
