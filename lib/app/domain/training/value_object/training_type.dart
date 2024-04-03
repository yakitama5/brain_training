enum TrainingType {
  coloredWord(
    30000,
  ),
  themeShiritori(
    300000,
  ),
  addMinus(
    60000,
  ),
  ;

  const TrainingType(
    this.limitMillSecond,
  );

  final int limitMillSecond;
}
