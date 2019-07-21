import 'question.dart';

class QuizBrain {

  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("Bhubaneswar is the capital of Odisha.", true),
    Question("Bhubaneswar is the no.10 smartcity of India.", false),
    Question("K. Naveen Reddy is the C.M of Odisha.", false),
    Question("30 is the total Number of District in Odisha.", true),
    Question("21 is the total Number of Lok sabha seats in Odisha.", true),
    Question("Malayalam is official language of Odisha state.", false),
    Question("88.05 is literacy Rate of Odisha.", false),
  ];

  void nextQuestion() {
    if(_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
  bool isFinished() {
  if (_questionNumber >= _questionBank.length - 1) {
    //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

    print('Now returning true');
    return true;

  } else {
    return false;
  }
}

//TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
void reset() {
  _questionNumber = 0;
}

}