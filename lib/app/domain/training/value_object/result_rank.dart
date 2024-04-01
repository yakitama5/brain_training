enum ResultRank {
  excellent('Excellent!!!', '横綱級'),
  great('Great!', '大関級'),
  good('Good', '関脇級'),
  average('Average', '前頭級'),
  poor('Poor...', '幕下級');

  const ResultRank(this.normal, this.sumo);

  final String normal;
  final String sumo;
}
