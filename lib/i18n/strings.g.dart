/// Generated file. Do not edit.
///
/// Original: assets/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 54 (27 per locale)
///
/// Built on 2024-04-03 at 07:40 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

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

// Path: training
class _StringsTrainingEn {
	_StringsTrainingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get menu => 'Menu';
	String get doneMenu => 'Done';
	late final _StringsTrainingTrainingCardEn trainingCard = _StringsTrainingTrainingCardEn._(_root);
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
	@override String get tutorial => 'チュートリアル';
}

// Path: common.navigationDestination
class _StringsCommonNavigationDestinationJa extends _StringsCommonNavigationDestinationEn {
	_StringsCommonNavigationDestinationJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get home => 'ホーム';
	@override String get analytics => 'ふりかえり';
	@override String get training => '脳トレ';
	@override String get coffeBreak => 'いきぬき';
	@override String get settings => 'せってい';
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
			case 'home.todayStatus': return 'Today';
			case 'home.todayNews': return 'News';
			case 'home.thisWeekStatus': return 'This Week';
			case 'home.dailyTraining': return 'Daily';
			case 'home.completed': return 'Completed';
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
			case 'common.navigationDestination.analytics': return 'ふりかえり';
			case 'common.navigationDestination.training': return '脳トレ';
			case 'common.navigationDestination.coffeBreak': return 'いきぬき';
			case 'common.navigationDestination.settings': return 'せってい';
			case 'common.start': return 'スタート！';
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
			case 'training.tutorial': return 'チュートリアル';
			default: return null;
		}
	}
}
