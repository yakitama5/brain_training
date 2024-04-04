/// Generated file. Do not edit.
///
/// Original: assets/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 106 (53 per locale)
///
/// Built on 2024-04-04 at 01:34 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:brain_training/app/domain/training/value_object/rank_category.dart';
import 'package:brain_training/app/domain/training/value_object/result_rank.dart';
import 'package:brain_training/app/domain/training/value_object/training_type.dart';
import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build),
	ja(languageCode: 'ja', build: _StringsJa.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of i18n).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = i18n.someKey.anotherKey;
/// String b = i18n['someKey.anotherKey']; // Only for edge cases!
Translations get i18n => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final i18n = Translations.of(context); // Get i18n variable.
/// String a = i18n.someKey.anotherKey; // Use i18n variable.
/// String b = i18n['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.i18n.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get i18n => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final i18n = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final _StringsCommonEn common = _StringsCommonEn._(_root);
	late final _StringsHomeEn home = _StringsHomeEn._(_root);
	late final _StringsSettingsEn settings = _StringsSettingsEn._(_root);
	late final _StringsTrainingEn training = _StringsTrainingEn._(_root);
}

// Path: common
class _StringsCommonEn {
	_StringsCommonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get save => 'Save';
	late final _StringsCommonNavigationDestinationEn navigationDestination = _StringsCommonNavigationDestinationEn._(_root);
	String get start => 'Start!';
	String get end => 'End';
}

// Path: home
class _StringsHomeEn {
	_StringsHomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get todayStatus => 'Today';
	String get todayNews => 'News';
	String get thisWeekStatus => 'This Week';
	String get dailyTraining => 'Daily';
	String get completed => 'Completed';
}

// Path: settings
class _StringsSettingsEn {
	_StringsSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => '設定';
	late final _StringsSettingsListEn list = _StringsSettingsListEn._(_root);
	late final _StringsSettingsAccountEn account = _StringsSettingsAccountEn._(_root);
}

// Path: training
class _StringsTrainingEn {
	_StringsTrainingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get menu => 'Menu';
	String get doneMenu => 'Done';
	late final _StringsTrainingTrainingCardEn trainingCard = _StringsTrainingTrainingCardEn._(_root);
	late final _StringsTrainingResultEn result = _StringsTrainingResultEn._(_root);
	String get tutorial => 'Tutorial';
}

// Path: common.navigationDestination
class _StringsCommonNavigationDestinationEn {
	_StringsCommonNavigationDestinationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get home => 'Home';
	String get analytics => 'Analytics';
	String get training => 'Training';
	String get coffeBreak => 'Break';
	String get settings => 'Settings';
}

// Path: settings.list
class _StringsSettingsListEn {
	_StringsSettingsListEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsSettingsListAccountEn account = _StringsSettingsListAccountEn._(_root);
}

// Path: settings.account
class _StringsSettingsAccountEn {
	_StringsSettingsAccountEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get accountLink => 'アカウント連携';
	String get other => 'その他';
	String get leave => '退会';
}

// Path: training.trainingCard
class _StringsTrainingTrainingCardEn {
	_StringsTrainingTrainingCardEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String title({required TrainingType context}) {
		switch (context) {
			case TrainingType.coloredWord:
				return 'Colored Word';
			case TrainingType.themeShiritori:
				return 'Shiritori';
			case TrainingType.addMinus:
				return 'Add Minus';
		}
	}
	String get inviteSubhead => 'Let\'s Training!';
	String get doneSubhead => 'Today Score';
	String subhead({required TrainingType context}) {
		switch (context) {
			case TrainingType.coloredWord:
				return '30 Seconds';
			case TrainingType.themeShiritori:
				return '5 Minuts';
			case TrainingType.addMinus:
				return '60 Seconds';
		}
	}
	String description({required TrainingType context}) {
		switch (context) {
			case TrainingType.coloredWord:
				return 'Four different colored letters will be displayed.\nPlease answer with the displayed color, not the text.\n\nYou can choose from two answer methods.\n・(Recommended) Answer with voice\n・Answer from the options';
			case TrainingType.themeShiritori:
				return 'Shiritori will be limited to the themes displayed in the options.Please continue to interact with AI as much as possible.\n\nYou can choose from two answer methods.\n・(Recommended) Answer with voice\n・Enter and answer';
			case TrainingType.addMinus:
				return 'Shiritori will be limited to the themes displayed in the options.Please continue to interact with AI as much as possible.\n\nYou can choose from two answer methods.\n・(Recommended) Answer with voice\n・Enter and answer';
		}
	}
	String get start => 'Start';
}

// Path: training.result
class _StringsTrainingResultEn {
	_StringsTrainingResultEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsTrainingResultScoreCardEn scoreCard = _StringsTrainingResultScoreCardEn._(_root);
	late final _StringsTrainingResultRankEn rank = _StringsTrainingResultRankEn._(_root);
	String category({required RankCategory context}) {
		switch (context) {
			case RankCategory.normal:
				return 'English';
			case RankCategory.sumo:
				return 'Sumo';
			case RankCategory.royal:
				return 'Royal';
		}
	}
	String questions({required int qeustions}) => '${qeustions} qeustions';
	String score({required int points}) => '${points} points';
	String correctRate({required int rate}) => 'Correct rate: ${rate}%';
}

// Path: settings.list.account
class _StringsSettingsListAccountEn {
	_StringsSettingsListAccountEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get head => 'アカウント';
	String get account => 'アカウント';
}

// Path: training.result.scoreCard
class _StringsTrainingResultScoreCardEn {
	_StringsTrainingResultScoreCardEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Score';
}

// Path: training.result.rank
class _StringsTrainingResultRankEn {
	_StringsTrainingResultRankEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String normal({required ResultRank context}) {
		switch (context) {
			case ResultRank.excellent:
				return 'Eexcellent!!!';
			case ResultRank.great:
				return 'Great!';
			case ResultRank.good:
				return 'Good';
			case ResultRank.average:
				return 'Average';
			case ResultRank.poor:
				return 'Poor...';
		}
	}
	String sumo({required ResultRank context}) {
		switch (context) {
			case ResultRank.excellent:
				return 'Yokozuna!!!';
			case ResultRank.great:
				return 'Ozeki!';
			case ResultRank.good:
				return 'Sekiwake';
			case ResultRank.average:
				return 'Maegashira';
			case ResultRank.poor:
				return 'Non-banzuke...';
		}
	}
	String royal({required ResultRank context}) {
		switch (context) {
			case ResultRank.excellent:
				return 'Prince';
			case ResultRank.great:
				return 'Marquess';
			case ResultRank.good:
				return 'Earl';
			case ResultRank.average:
				return 'Viscount';
			case ResultRank.poor:
				return 'Baron';
		}
	}
}

// Path: <root>
class _StringsJa extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsJa.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsJa _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsCommonJa common = _StringsCommonJa._(_root);
	@override late final _StringsHomeJa home = _StringsHomeJa._(_root);
	@override late final _StringsTrainingJa training = _StringsTrainingJa._(_root);
}

// Path: common
class _StringsCommonJa extends _StringsCommonEn {
	_StringsCommonJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get save => '保存';
	@override late final _StringsCommonNavigationDestinationJa navigationDestination = _StringsCommonNavigationDestinationJa._(_root);
	@override String get start => 'スタート！';
	@override String get end => '終了';
}

// Path: home
class _StringsHomeJa extends _StringsHomeEn {
	_StringsHomeJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get todayStatus => '今日の状況';
	@override String get todayNews => '今日のニュース';
	@override String get thisWeekStatus => '今週の状況';
	@override String get dailyTraining => '毎日のトレーニング';
	@override String get completed => '達成';
}

// Path: training
class _StringsTrainingJa extends _StringsTrainingEn {
	_StringsTrainingJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get menu => '脳トレメニュー';
	@override String get doneMenu => '実施済のトレーニング';
	@override late final _StringsTrainingTrainingCardJa trainingCard = _StringsTrainingTrainingCardJa._(_root);
	@override late final _StringsTrainingResultJa result = _StringsTrainingResultJa._(_root);
	@override String get tutorial => 'チュートリアル';
}

// Path: common.navigationDestination
class _StringsCommonNavigationDestinationJa extends _StringsCommonNavigationDestinationEn {
	_StringsCommonNavigationDestinationJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get home => 'ホーム';
	@override String get analytics => '振り返り';
	@override String get training => '脳トレ';
	@override String get coffeBreak => '息抜き';
	@override String get settings => '設定';
}

// Path: training.trainingCard
class _StringsTrainingTrainingCardJa extends _StringsTrainingTrainingCardEn {
	_StringsTrainingTrainingCardJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String title({required TrainingType context}) {
		switch (context) {
			case TrainingType.coloredWord:
				return '色当てクイズ';
			case TrainingType.themeShiritori:
				return 'お題しりとり';
			case TrainingType.addMinus:
				return 'タスヒク';
		}
	}
	@override String get inviteSubhead => '今日の脳トレを始めましょう';
	@override String get doneSubhead => '今日のスコア';
	@override String subhead({required TrainingType context}) {
		switch (context) {
			case TrainingType.coloredWord:
				return '所要時間：30秒';
			case TrainingType.themeShiritori:
				return '所要時間：5分';
			case TrainingType.addMinus:
				return '所要時間：60秒';
		}
	}
	@override String description({required TrainingType context}) {
		switch (context) {
			case TrainingType.coloredWord:
				return '4種類の色の付いた文字が表示されます。\n文字ではなく、表示された色を答えて下さい。\n\n回答方法は二種類から選ぶことができます。\n・(おすすめ) 声で回答する\n・選択肢から回答する';
			case TrainingType.themeShiritori:
				return '選択肢に表示されたお題限定でしりとりを行います。\nAIとのしりとりを可能な限り続けて下さい。\n\n回答方法は二種類から選ぶことができます。\n・(おすすめ) 声で回答する\n・入力して回答する';
			case TrainingType.addMinus:
				return '選択肢に表示されたお題限定でしりとりを行います。\nAIとのしりとりを可能な限り続けて下さい。\n\n回答方法は二種類から選ぶことができます。\n・(おすすめ) 声で回答する\n・入力して回答する';
		}
	}
	@override String get start => '測定';
}

// Path: training.result
class _StringsTrainingResultJa extends _StringsTrainingResultEn {
	_StringsTrainingResultJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override late final _StringsTrainingResultScoreCardJa scoreCard = _StringsTrainingResultScoreCardJa._(_root);
	@override late final _StringsTrainingResultRankJa rank = _StringsTrainingResultRankJa._(_root);
	@override String category({required RankCategory context}) {
		switch (context) {
			case RankCategory.normal:
				return '英語';
			case RankCategory.sumo:
				return '相撲';
			case RankCategory.royal:
				return '爵位';
		}
	}
	@override String questions({required int qeustions}) => '${qeustions}問';
	@override String score({required int points}) => '${points}点';
	@override String correctRate({required int rate}) => '正答率：${rate}%';
}

// Path: training.result.scoreCard
class _StringsTrainingResultScoreCardJa extends _StringsTrainingResultScoreCardEn {
	_StringsTrainingResultScoreCardJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '評価';
}

// Path: training.result.rank
class _StringsTrainingResultRankJa extends _StringsTrainingResultRankEn {
	_StringsTrainingResultRankJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String normal({required ResultRank context}) {
		switch (context) {
			case ResultRank.excellent:
				return 'Eexcellent!!!';
			case ResultRank.great:
				return 'Great!';
			case ResultRank.good:
				return 'Good';
			case ResultRank.average:
				return 'Average';
			case ResultRank.poor:
				return 'Poor...';
		}
	}
	@override String sumo({required ResultRank context}) {
		switch (context) {
			case ResultRank.excellent:
				return '横綱級';
			case ResultRank.great:
				return '大関級';
			case ResultRank.good:
				return '関脇級';
			case ResultRank.average:
				return '前頭級';
			case ResultRank.poor:
				return '番付外';
		}
	}
	@override String royal({required ResultRank context}) {
		switch (context) {
			case ResultRank.excellent:
				return '公爵';
			case ResultRank.great:
				return '侯爵';
			case ResultRank.good:
				return '伯爵';
			case ResultRank.average:
				return '子爵';
			case ResultRank.poor:
				return '男爵';
		}
	}
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'common.save': return 'Save';
			case 'common.navigationDestination.home': return 'Home';
			case 'common.navigationDestination.analytics': return 'Analytics';
			case 'common.navigationDestination.training': return 'Training';
			case 'common.navigationDestination.coffeBreak': return 'Break';
			case 'common.navigationDestination.settings': return 'Settings';
			case 'common.start': return 'Start!';
			case 'common.end': return 'End';
			case 'home.todayStatus': return 'Today';
			case 'home.todayNews': return 'News';
			case 'home.thisWeekStatus': return 'This Week';
			case 'home.dailyTraining': return 'Daily';
			case 'home.completed': return 'Completed';
			case 'settings.title': return '設定';
			case 'settings.list.account.head': return 'アカウント';
			case 'settings.list.account.account': return 'アカウント';
			case 'settings.account.accountLink': return 'アカウント連携';
			case 'settings.account.other': return 'その他';
			case 'settings.account.leave': return '退会';
			case 'training.menu': return 'Menu';
			case 'training.doneMenu': return 'Done';
			case 'training.trainingCard.title': return ({required TrainingType context}) {
				switch (context) {
					case TrainingType.coloredWord:
						return 'Colored Word';
					case TrainingType.themeShiritori:
						return 'Shiritori';
					case TrainingType.addMinus:
						return 'Add Minus';
				}
			};
			case 'training.trainingCard.inviteSubhead': return 'Let\'s Training!';
			case 'training.trainingCard.doneSubhead': return 'Today Score';
			case 'training.trainingCard.subhead': return ({required TrainingType context}) {
				switch (context) {
					case TrainingType.coloredWord:
						return '30 Seconds';
					case TrainingType.themeShiritori:
						return '5 Minuts';
					case TrainingType.addMinus:
						return '60 Seconds';
				}
			};
			case 'training.trainingCard.description': return ({required TrainingType context}) {
				switch (context) {
					case TrainingType.coloredWord:
						return 'Four different colored letters will be displayed.\nPlease answer with the displayed color, not the text.\n\nYou can choose from two answer methods.\n・(Recommended) Answer with voice\n・Answer from the options';
					case TrainingType.themeShiritori:
						return 'Shiritori will be limited to the themes displayed in the options.Please continue to interact with AI as much as possible.\n\nYou can choose from two answer methods.\n・(Recommended) Answer with voice\n・Enter and answer';
					case TrainingType.addMinus:
						return 'Shiritori will be limited to the themes displayed in the options.Please continue to interact with AI as much as possible.\n\nYou can choose from two answer methods.\n・(Recommended) Answer with voice\n・Enter and answer';
				}
			};
			case 'training.trainingCard.start': return 'Start';
			case 'training.result.scoreCard.title': return 'Score';
			case 'training.result.rank.normal': return ({required ResultRank context}) {
				switch (context) {
					case ResultRank.excellent:
						return 'Eexcellent!!!';
					case ResultRank.great:
						return 'Great!';
					case ResultRank.good:
						return 'Good';
					case ResultRank.average:
						return 'Average';
					case ResultRank.poor:
						return 'Poor...';
				}
			};
			case 'training.result.rank.sumo': return ({required ResultRank context}) {
				switch (context) {
					case ResultRank.excellent:
						return 'Yokozuna!!!';
					case ResultRank.great:
						return 'Ozeki!';
					case ResultRank.good:
						return 'Sekiwake';
					case ResultRank.average:
						return 'Maegashira';
					case ResultRank.poor:
						return 'Non-banzuke...';
				}
			};
			case 'training.result.rank.royal': return ({required ResultRank context}) {
				switch (context) {
					case ResultRank.excellent:
						return 'Prince';
					case ResultRank.great:
						return 'Marquess';
					case ResultRank.good:
						return 'Earl';
					case ResultRank.average:
						return 'Viscount';
					case ResultRank.poor:
						return 'Baron';
				}
			};
			case 'training.result.category': return ({required RankCategory context}) {
				switch (context) {
					case RankCategory.normal:
						return 'English';
					case RankCategory.sumo:
						return 'Sumo';
					case RankCategory.royal:
						return 'Royal';
				}
			};
			case 'training.result.questions': return ({required int qeustions}) => '${qeustions} qeustions';
			case 'training.result.score': return ({required int points}) => '${points} points';
			case 'training.result.correctRate': return ({required int rate}) => 'Correct rate: ${rate}%';
			case 'training.tutorial': return 'Tutorial';
			default: return null;
		}
	}
}

extension on _StringsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'common.save': return '保存';
			case 'common.navigationDestination.home': return 'ホーム';
			case 'common.navigationDestination.analytics': return '振り返り';
			case 'common.navigationDestination.training': return '脳トレ';
			case 'common.navigationDestination.coffeBreak': return '息抜き';
			case 'common.navigationDestination.settings': return '設定';
			case 'common.start': return 'スタート！';
			case 'common.end': return '終了';
			case 'home.todayStatus': return '今日の状況';
			case 'home.todayNews': return '今日のニュース';
			case 'home.thisWeekStatus': return '今週の状況';
			case 'home.dailyTraining': return '毎日のトレーニング';
			case 'home.completed': return '達成';
			case 'training.menu': return '脳トレメニュー';
			case 'training.doneMenu': return '実施済のトレーニング';
			case 'training.trainingCard.title': return ({required TrainingType context}) {
				switch (context) {
					case TrainingType.coloredWord:
						return '色当てクイズ';
					case TrainingType.themeShiritori:
						return 'お題しりとり';
					case TrainingType.addMinus:
						return 'タスヒク';
				}
			};
			case 'training.trainingCard.inviteSubhead': return '今日の脳トレを始めましょう';
			case 'training.trainingCard.doneSubhead': return '今日のスコア';
			case 'training.trainingCard.subhead': return ({required TrainingType context}) {
				switch (context) {
					case TrainingType.coloredWord:
						return '所要時間：30秒';
					case TrainingType.themeShiritori:
						return '所要時間：5分';
					case TrainingType.addMinus:
						return '所要時間：60秒';
				}
			};
			case 'training.trainingCard.description': return ({required TrainingType context}) {
				switch (context) {
					case TrainingType.coloredWord:
						return '4種類の色の付いた文字が表示されます。\n文字ではなく、表示された色を答えて下さい。\n\n回答方法は二種類から選ぶことができます。\n・(おすすめ) 声で回答する\n・選択肢から回答する';
					case TrainingType.themeShiritori:
						return '選択肢に表示されたお題限定でしりとりを行います。\nAIとのしりとりを可能な限り続けて下さい。\n\n回答方法は二種類から選ぶことができます。\n・(おすすめ) 声で回答する\n・入力して回答する';
					case TrainingType.addMinus:
						return '選択肢に表示されたお題限定でしりとりを行います。\nAIとのしりとりを可能な限り続けて下さい。\n\n回答方法は二種類から選ぶことができます。\n・(おすすめ) 声で回答する\n・入力して回答する';
				}
			};
			case 'training.trainingCard.start': return '測定';
			case 'training.result.scoreCard.title': return '評価';
			case 'training.result.rank.normal': return ({required ResultRank context}) {
				switch (context) {
					case ResultRank.excellent:
						return 'Eexcellent!!!';
					case ResultRank.great:
						return 'Great!';
					case ResultRank.good:
						return 'Good';
					case ResultRank.average:
						return 'Average';
					case ResultRank.poor:
						return 'Poor...';
				}
			};
			case 'training.result.rank.sumo': return ({required ResultRank context}) {
				switch (context) {
					case ResultRank.excellent:
						return '横綱級';
					case ResultRank.great:
						return '大関級';
					case ResultRank.good:
						return '関脇級';
					case ResultRank.average:
						return '前頭級';
					case ResultRank.poor:
						return '番付外';
				}
			};
			case 'training.result.rank.royal': return ({required ResultRank context}) {
				switch (context) {
					case ResultRank.excellent:
						return '公爵';
					case ResultRank.great:
						return '侯爵';
					case ResultRank.good:
						return '伯爵';
					case ResultRank.average:
						return '子爵';
					case ResultRank.poor:
						return '男爵';
				}
			};
			case 'training.result.category': return ({required RankCategory context}) {
				switch (context) {
					case RankCategory.normal:
						return '英語';
					case RankCategory.sumo:
						return '相撲';
					case RankCategory.royal:
						return '爵位';
				}
			};
			case 'training.result.questions': return ({required int qeustions}) => '${qeustions}問';
			case 'training.result.score': return ({required int points}) => '${points}点';
			case 'training.result.correctRate': return ({required int rate}) => '正答率：${rate}%';
			case 'training.tutorial': return 'チュートリアル';
			default: return null;
		}
	}
}
