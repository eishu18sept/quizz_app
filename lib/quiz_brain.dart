import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Joey\'s pickup line is " How you Doing ? ', true),
    Question('Monica is married to mike', false),
    Question('Rachel and Gunther dated for few days', false),
    Question('Ross and Rachel were on a break', true),
    Question('Joey shares his food', false),
    Question('Chandler parents are divorced', true),
    Question('Emma is the baby of Joey and Rachel', false),
    Question('Ross has been divorced 3 times', true),
    Question('Phoebe famous song is " Smelly Cat " ', true),
    Question('Rachel is played by actress Jennifer Anniston', true),
    Question('Chandler is Gay', false),
    Question('Ross was a paleantologist and later becomes a professor', true),
    Question('Ben is Ross and Rachel\'s kid', false),
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