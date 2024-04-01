enum TrainingType {
  coloredWord(
    '色当てクイズ',
    '所要時間：30秒間',
    '''
4種類の色の付いた文字が表示されます。
文字ではなく、表示された色を答えて下さい。

回答方法は二種類から選ぶことができます。
・(おすすめ) 声で回答する
・選択肢から回答する
''',
    30000,
  ),
  themeShiritori(
    'お題しりとり',
    '所要時間：5分間',
    '''
選択肢に表示されたお題限定でしりとりを行います。
AIとのしりとりを可能な限り続けて下さい。

回答方法は二種類から選ぶことができます。
・(おすすめ) 声で回答する
・入力して回答する
''',
    300000,
  ),
  addMinus(
    'タスヒク',
    '所要時間：60秒間',
    '''
選択肢に表示されたお題限定でしりとりを行います。
AIとのしりとりを可能な限り続けて下さい。

回答方法は二種類から選ぶことができます。
(おすすめ) 声で回答する
入力して回答する
''',
    60000,
  ),
  ;

  const TrainingType(
    this.title,
    this.subhead,
    this.description,
    this.limitMillSecond,
  );

  final String title;
  final String subhead;
  final String description;
  final int limitMillSecond;
}
