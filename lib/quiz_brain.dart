import 'question.dart';

class QuizBrain {
  int _quetionNumber = 0;

  List<Question> _questionBank = [
    Question('キリンの睡眠時間は一日６時間である', false),
    Question('パンダは鳴く事がある', true),
    Question('コアラの指には人間のように指紋がある', true),
    Question('ジャイアントパンダの尻尾の色は黒である', false),
    Question('フラミンゴが片足で立っているのはバランスを取るためである', false),
    Question('キリンの舌の色は人間のように赤色である', false),
    Question('うさぎの耳には温度調整する機能がある', true),
    Question('フクロウには耳がない', false),
    Question('鹿の胃は４つである', true),
    Question('馬は鼻でしか息をしない', true),
    Question('ブルドッグの目玉は飛び出してしまう事がある', true),
    Question('シマウマの鳴き声は「ヒヒーン！！」である', false),
  ];

  void nextQuestion() {
    if (_quetionNumber < _questionBank.length - 1) {
      _quetionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_quetionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_quetionNumber].questionAnswer;
  }

  bool isFinished() {
    bool isFin;
    if (_quetionNumber < _questionBank.length - 1)
      isFin = false;
    else
      isFin = true;
    return isFin;
  }

  void reset() {
    _quetionNumber = 0;
  }
}
