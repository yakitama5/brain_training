Analyzing C:\src\github.com\yakitama5\brain_training ...

```mermaid
flowchart TB
  subgraph Arrows
    direction LR
    start1[ ] -..->|read| stop1[ ]
    style start1 height:0px;
    style stop1 height:0px;
    start2[ ] --->|listen| stop2[ ]
    style start2 height:0px;
    style stop2 height:0px;
    start3[ ] ===>|watch| stop3[ ]
    style start3 height:0px;
    style stop3 height:0px;
  end
  subgraph Type
    direction TB
    ConsumerWidget((widget));
    Provider[[provider]];
  end
  
  routerProvider[["routerProvider"]];
  appThemeProvider[["appThemeProvider"]];
  themeModeProvider[["themeModeProvider"]];
  loadingNotifierProvider[["loadingNotifierProvider"]];
  colorStyleProvider[["colorStyleProvider"]];
  settingsUsecaseProvider[["settingsUsecaseProvider"]];
  rankCategoryProvider[["rankCategoryProvider"]];
  uiStyleProvider[["uiStyleProvider"]];
  authStatusProvider[["authStatusProvider"]];
  userUsecaseProvider[["userUsecaseProvider"]];
  authUserProvider[["authUserProvider"]];
  userProvider[["userProvider"]];
  weatherProvider[["weatherProvider"]];
  weatherUsecaseProvider[["weatherUsecaseProvider"]];
  duserCollectionRefProvider[["duserCollectionRefProvider"]];
  firestoreProvider[["firestoreProvider"]];
  userCollectionRefProvider[["userCollectionRefProvider"]];
  trainingResultProvider[["trainingResultProvider"]];
  trainingWeeklySummaryProvider[["trainingWeeklySummaryProvider"]];
  newsHeadlinesProvider[["newsHeadlinesProvider"]];
  dynamicColorSupportedProvider[["dynamicColorSupportedProvider"]];
  appSoundPlayersProvider[["appSoundPlayersProvider"]];
  trainingUsecaseProvider[["trainingUsecaseProvider"]];
  routerNotifierProvider[["routerNotifierProvider"]];
  initialLocationProvider[["initialLocationProvider"]];
  App((App));
  _TrainingCardsPane((_TrainingCardsPane));
  _WeeklyTrainingPane((_WeeklyTrainingPane));
  NewsPane((NewsPane));
  AccountPage((AccountPage));
  ColorStyleSelectPage((ColorStyleSelectPage));
  OnboardPage((OnboardPage));
  RankCategorySelectPage((RankCategorySelectPage));
  SettingsPage((SettingsPage));
  ThemeModeSelectPage((ThemeModeSelectPage));
  UIStyleSelectPage((UIStyleSelectPage));
  PlayPage((PlayPage));
  StopwatchBuilder((StopwatchBuilder));
  TrainingMenuPage((TrainingMenuPage));
  ScoreCard((ScoreCard));

  routerProvider ==> App;
  appThemeProvider ==> App;
  themeModeProvider ==> App;
  loadingNotifierProvider ==> App;
  rankCategoryProvider ==> _TrainingCardsPane;
  trainingResultProvider ==> _TrainingCardsPane;
  trainingWeeklySummaryProvider ==> _WeeklyTrainingPane;
  newsHeadlinesProvider ==> NewsPane;
  newsHeadlinesProvider ==> NewsPane;
  authStatusProvider ==> AccountPage;
  userUsecaseProvider -.-> AccountPage;
  userUsecaseProvider -.-> AccountPage;
  userUsecaseProvider -.-> AccountPage;
  userUsecaseProvider -.-> AccountPage;
  dynamicColorSupportedProvider ==> ColorStyleSelectPage;
  colorStyleProvider ==> ColorStyleSelectPage;
  settingsUsecaseProvider -.-> ColorStyleSelectPage;
  userUsecaseProvider -.-> OnboardPage;
  rankCategoryProvider ==> RankCategorySelectPage;
  settingsUsecaseProvider -.-> RankCategorySelectPage;
  rankCategoryProvider ==> SettingsPage;
  uiStyleProvider ==> SettingsPage;
  themeModeProvider ==> SettingsPage;
  colorStyleProvider ==> SettingsPage;
  themeModeProvider ==> ThemeModeSelectPage;
  settingsUsecaseProvider -.-> ThemeModeSelectPage;
  uiStyleProvider ==> UIStyleSelectPage;
  settingsUsecaseProvider -.-> UIStyleSelectPage;
  appSoundPlayersProvider ==> PlayPage;
  trainingUsecaseProvider -.-> PlayPage;
  appSoundPlayersProvider ==> StopwatchBuilder;
  rankCategoryProvider ==> TrainingMenuPage;
  trainingResultProvider ==> TrainingMenuPage;
  rankCategoryProvider ==> ScoreCard;
  routerNotifierProvider ==> routerProvider;
  initialLocationProvider ==> routerProvider;
  settingsUsecaseProvider ==> themeModeProvider;
  settingsUsecaseProvider ==> colorStyleProvider;
  settingsUsecaseProvider ==> rankCategoryProvider;
  settingsUsecaseProvider ==> uiStyleProvider;
  userUsecaseProvider ==> authStatusProvider;
  authStatusProvider ==> authUserProvider;
  userProvider ==> authUserProvider;
```





