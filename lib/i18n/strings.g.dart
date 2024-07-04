/// Generated file. Do not edit.
///
/// Original: assets/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 272 (136 per locale)
///
/// Built on 2024-07-04 at 09:25 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:brain_training/app/domain/read_color/value_object/colored_word.dart';
import 'package:brain_training/app/domain/settings/value_object/color_style.dart';
import 'package:brain_training/app/domain/settings/value_object/ui_style.dart';
import 'package:brain_training/app/domain/training/value_object/answer_type.dart';
import 'package:brain_training/app/domain/training/value_object/rank_category.dart';
import 'package:brain_training/app/domain/training/value_object/result_rank.dart';
import 'package:brain_training/app/domain/training/value_object/training_type.dart';
import 'package:flutter/material.dart';
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
	late final _StringsErrorEn error = _StringsErrorEn._(_root);
	late final _StringsHomeEn home = _StringsHomeEn._(_root);
	late final _StringsIntroductionEn introduction = _StringsIntroductionEn._(_root);
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
	late final _StringsCommonPermissionEn permission = _StringsCommonPermissionEn._(_root);
	String get camera => 'Camera';
	String get microphone => 'Microphone';
}

// Path: error
class _StringsErrorEn {
	_StringsErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String failedMessage({required String action}) => '${action} failed.';
}

// Path: home
class _StringsHomeEn {
	_StringsHomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get todayStatus => 'Today';
	String get todayNews => 'News';
	String get thisWeekStatus => 'Weekly';
	String get dailyTraining => 'Daily';
	String get completed => 'Comp';
}

// Path: introduction
class _StringsIntroductionEn {
	_StringsIntroductionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get start => 'はじめる';
	String get forFirstUser => 'はじめての方はこちら';
	String get signInWithGoogle => 'Googleアカウントでログイン';
	String get signInWithApple => 'Appleアカウントでログイン';
}

// Path: settings
class _StringsSettingsEn {
	_StringsSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Settings';
	late final _StringsSettingsListEn list = _StringsSettingsListEn._(_root);
	late final _StringsSettingsAccountEn account = _StringsSettingsAccountEn._(_root);
	late final _StringsSettingsUiStyleEn uiStyle = _StringsSettingsUiStyleEn._(_root);
	late final _StringsSettingsThemeModeEn themeMode = _StringsSettingsThemeModeEn._(_root);
	late final _StringsSettingsColorStyleEn colorStyle = _StringsSettingsColorStyleEn._(_root);
}

// Path: training
class _StringsTrainingEn {
	_StringsTrainingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get menu => 'Menu';
	String get doneMenu => 'Done';
	late final _StringsTrainingTrainingTypeEn trainingType = _StringsTrainingTrainingTypeEn._(_root);
	late final _StringsTrainingAnswerSelectionEn answerSelection = _StringsTrainingAnswerSelectionEn._(_root);
	late final _StringsTrainingTrainingCardEn trainingCard = _StringsTrainingTrainingCardEn._(_root);
	late final _StringsTrainingResultEn result = _StringsTrainingResultEn._(_root);
	String get tutorial => 'Tutorial';
	late final _StringsTrainingColoredWordEn coloredWord = _StringsTrainingColoredWordEn._(_root);
	late final _StringsTrainingCancelDialogEn cancelDialog = _StringsTrainingCancelDialogEn._(_root);
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

// Path: common.permission
class _StringsCommonPermissionEn {
	_StringsCommonPermissionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsCommonPermissionOpenSettingsDialogEn openSettingsDialog = _StringsCommonPermissionOpenSettingsDialogEn._(_root);
}

// Path: settings.list
class _StringsSettingsListEn {
	_StringsSettingsListEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsSettingsListAccountEn account = _StringsSettingsListAccountEn._(_root);
	late final _StringsSettingsListLayoutEn layout = _StringsSettingsListLayoutEn._(_root);
	late final _StringsSettingsListHelpEn help = _StringsSettingsListHelpEn._(_root);
}

// Path: settings.account
class _StringsSettingsAccountEn {
	_StringsSettingsAccountEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get accountLink => 'Account link';
	String get other => 'Other';
	String get leave => 'Leave';
}

// Path: settings.uiStyle
class _StringsSettingsUiStyleEn {
	_StringsSettingsUiStyleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String type({required UIStyle context}) {
		switch (context) {
			case UIStyle.system:
				return 'System';
			case UIStyle.android:
				return 'Android';
			case UIStyle.ios:
				return 'iOS';
		}
	}
}

// Path: settings.themeMode
class _StringsSettingsThemeModeEn {
	_StringsSettingsThemeModeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String type({required ThemeMode context}) {
		switch (context) {
			case ThemeMode.system:
				return 'System';
			case ThemeMode.light:
				return 'Light mode';
			case ThemeMode.dark:
				return 'Dark mode';
		}
	}
}

// Path: settings.colorStyle
class _StringsSettingsColorStyleEn {
	_StringsSettingsColorStyleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String type({required ColorStyle context}) {
		switch (context) {
			case ColorStyle.dynamicColor:
				return 'DynamicColor';
			case ColorStyle.systemColor:
				return 'SystemColor';
			case ColorStyle.blue:
				return 'Blue';
			case ColorStyle.purple:
				return 'Purple';
			case ColorStyle.green:
				return 'Green';
			case ColorStyle.red:
				return 'Red';
			case ColorStyle.pink:
				return 'Pink';
			case ColorStyle.yellow:
				return 'Yellow';
			case ColorStyle.orange:
				return 'Orange';
		}
	}
}

// Path: training.trainingType
class _StringsTrainingTrainingTypeEn {
	_StringsTrainingTrainingTypeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String title({required TrainingType context}) {
		switch (context) {
			case TrainingType.coloredWord:
				return 'Colored Word';
			case TrainingType.themeShiritori:
				return 'Shiritori';
			case TrainingType.fillInTheBlankCalc:
				return 'Add Minus';
		}
	}
	String timeRequired({required TrainingType context}) {
		switch (context) {
			case TrainingType.coloredWord:
				return '30 Seconds';
			case TrainingType.themeShiritori:
				return '5 Minuts';
			case TrainingType.fillInTheBlankCalc:
				return '60 Seconds';
		}
	}
	String description({required TrainingType context}) {
		switch (context) {
			case TrainingType.coloredWord:
				return 'Four different colored letters will be displayed.\nPlease answer with the displayed color, not the text.\n\nYou can choose from two answer methods.\n・(Recommended) Answer with voice\n・Answer from the options';
			case TrainingType.themeShiritori:
				return 'Shiritori will be limited to the themes displayed in the options.Please continue to interact with AI as much as possible.\n\nYou can choose from two answer methods.\n・(Recommended) Answer with voice\n・Enter and answer';
			case TrainingType.fillInTheBlankCalc:
				return 'A calculation formula with a hole will be displayed.\nPlease answer the operators so that the formula is correct.\n\nYou can choose from two answer methods.\n・(Recommended) Answer with voice\n・Answer from the options';
		}
	}
}

// Path: training.answerSelection
class _StringsTrainingAnswerSelectionEn {
	_StringsTrainingAnswerSelectionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Answer selection';
	String process({required AnswerType context}) {
		switch (context) {
			case AnswerType.voice:
				return 'Voice';
			case AnswerType.list:
				return 'Select';
		}
	}
	String recommended({required String answerType}) => '(Recommended)${answerType}';
}

// Path: training.trainingCard
class _StringsTrainingTrainingCardEn {
	_StringsTrainingTrainingCardEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get inviteSubhead => 'Let\'s Training!';
	String get doneSubhead => 'Today Score';
	String get start => 'Start';
}

// Path: training.result
class _StringsTrainingResultEn {
	_StringsTrainingResultEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Result';
	late final _StringsTrainingResultScoreCardEn scoreCard = _StringsTrainingResultScoreCardEn._(_root);
	Map<String, dynamic> get rank => {
		'normal': ({required ResultRank context}) {
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
		},
		'sumo': ({required ResultRank context}) {
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
		},
		'royal': ({required ResultRank context}) {
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
		},
		'beetle': ({required ResultRank context}) {
			switch (context) {
				case ResultRank.excellent:
					return 'Hercules Beetle';
				case ResultRank.great:
					return 'Satan Beetle';
				case ResultRank.good:
					return 'Elephant Beetle';
				case ResultRank.average:
					return 'Beetle';
				case ResultRank.poor:
					return 'Small Stag Beetle';
			}
		},
		'stagBeetle': ({required ResultRank context}) {
			switch (context) {
				case ResultRank.excellent:
					return 'Tarandus glossy stag beetle';
				case ResultRank.great:
					return 'Golden Stag Beetle';
				case ResultRank.good:
					return 'オオクワガタ';
				case ResultRank.average:
					return 'Giant stag beetle';
				case ResultRank.poor:
					return 'Stag beetle';
			}
		},
		'planet': ({required ResultRank context}) {
			switch (context) {
				case ResultRank.excellent:
					return 'Sun';
				case ResultRank.great:
					return 'Jupiter';
				case ResultRank.good:
					return 'Earth';
				case ResultRank.average:
					return 'Moon';
				case ResultRank.poor:
					return 'asteroid';
			}
		},
		'police': ({required ResultRank context}) {
			switch (context) {
				case ResultRank.excellent:
					return 'Commissioner';
				case ResultRank.great:
					return 'Superintendent';
				case ResultRank.good:
					return 'Police Inspector';
				case ResultRank.average:
					return 'Sergeant';
				case ResultRank.poor:
					return 'Constable';
			}
		},
	};
	String category({required RankCategory context}) {
		switch (context) {
			case RankCategory.normal:
				return 'Default';
			case RankCategory.beetle:
				return 'Beetle';
			case RankCategory.sumo:
				return 'Sumo';
			case RankCategory.royal:
				return 'Royal';
			case RankCategory.planet:
				return 'Planet';
			case RankCategory.police:
				return 'Police';
			case RankCategory.stagBeetle:
				return 'StagBeetle';
		}
	}
	String questions({required int qeustions}) => '${qeustions} qeustions';
	String score({required int points}) => '${points} points';
	String correctRate({required int rate}) => 'Correct rate: ${rate}%';
	late final _StringsTrainingResultShareEn share = _StringsTrainingResultShareEn._(_root);
}

// Path: training.coloredWord
class _StringsTrainingColoredWordEn {
	_StringsTrainingColoredWordEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String displayWord({required ColoredWord context}) {
		switch (context) {
			case ColoredWord.black:
				return 'Black';
			case ColoredWord.red:
				return 'Red';
			case ColoredWord.blue:
				return 'Blue';
			case ColoredWord.green:
				return 'Green';
		}
	}
	String readWord({required ColoredWord context}) {
		switch (context) {
			case ColoredWord.black:
				return 'Black';
			case ColoredWord.red:
				return 'Red';
			case ColoredWord.blue:
				return 'Blue';
			case ColoredWord.green:
				return 'Green';
		}
	}
}

// Path: training.cancelDialog
class _StringsTrainingCancelDialogEn {
	_StringsTrainingCancelDialogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Interruption?';
	String get messages => 'Training content is not reflected.';
	String get cancel => 'Continue';
	String get ok => 'Interruption';
}

// Path: common.permission.openSettingsDialog
class _StringsCommonPermissionOpenSettingsDialogEn {
	_StringsCommonPermissionOpenSettingsDialogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Request for permission settings';
	String message({required String operation}) => 'To use this feature, open the Settings app and allow access to the ${operation}.';
	String get okLabel => 'Open Settings';
}

// Path: settings.list.account
class _StringsSettingsListAccountEn {
	_StringsSettingsListAccountEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get head => 'Account';
	String get account => 'Account';
}

// Path: settings.list.layout
class _StringsSettingsListLayoutEn {
	_StringsSettingsListLayoutEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get head => 'Layout';
	String get rankType => 'Rank';
	String get uiStyle => 'UI Style';
	String get themeMode => 'ThemeMode';
	String get colorTheme => 'ColorTheme';
}

// Path: settings.list.help
class _StringsSettingsListHelpEn {
	_StringsSettingsListHelpEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get head => 'Help';
	String get howToUse => 'HowToUse';
	String get contactUs => 'Contact us';
	String get developperTwitter => 'Developper X (Twitter)';
	String get privacyPollicy => 'PrivacyPollicy';
	String get license => 'License';
}

// Path: training.result.scoreCard
class _StringsTrainingResultScoreCardEn {
	_StringsTrainingResultScoreCardEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Score';
}

// Path: training.result.share
class _StringsTrainingResultShareEn {
	_StringsTrainingResultShareEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get buttonCaption => 'Share';
	String subject({required String training}) => '${training} done!';
	String body({required String training, required int points}) => '${training} done\nMy score is ${points} points✨';
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
	@override late final _StringsErrorJa error = _StringsErrorJa._(_root);
	@override late final _StringsHomeJa home = _StringsHomeJa._(_root);
	@override late final _StringsIntroductionJa introduction = _StringsIntroductionJa._(_root);
	@override late final _StringsSettingsJa settings = _StringsSettingsJa._(_root);
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
	@override late final _StringsCommonPermissionJa permission = _StringsCommonPermissionJa._(_root);
	@override String get camera => 'カメラ';
	@override String get microphone => 'マイク';
}

// Path: error
class _StringsErrorJa extends _StringsErrorEn {
	_StringsErrorJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String failedMessage({required String action}) => '${action}に失敗しました。';
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

// Path: introduction
class _StringsIntroductionJa extends _StringsIntroductionEn {
	_StringsIntroductionJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get start => 'はじめる';
	@override String get forFirstUser => 'はじめての方はこちら';
	@override String get signInWithGoogle => 'Googleアカウントを使う';
	@override String get signInWithApple => 'Appleアカウントを使う';
}

// Path: settings
class _StringsSettingsJa extends _StringsSettingsEn {
	_StringsSettingsJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '設定';
	@override late final _StringsSettingsListJa list = _StringsSettingsListJa._(_root);
	@override late final _StringsSettingsAccountJa account = _StringsSettingsAccountJa._(_root);
	@override late final _StringsSettingsUiStyleJa uiStyle = _StringsSettingsUiStyleJa._(_root);
	@override late final _StringsSettingsThemeModeJa themeMode = _StringsSettingsThemeModeJa._(_root);
	@override late final _StringsSettingsColorStyleJa colorStyle = _StringsSettingsColorStyleJa._(_root);
}

// Path: training
class _StringsTrainingJa extends _StringsTrainingEn {
	_StringsTrainingJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get menu => '脳トレメニュー';
	@override String get doneMenu => '実施済のトレーニング';
	@override late final _StringsTrainingTrainingTypeJa trainingType = _StringsTrainingTrainingTypeJa._(_root);
	@override late final _StringsTrainingTrainingCardJa trainingCard = _StringsTrainingTrainingCardJa._(_root);
	@override late final _StringsTrainingAnswerSelectionJa answerSelection = _StringsTrainingAnswerSelectionJa._(_root);
	@override late final _StringsTrainingResultJa result = _StringsTrainingResultJa._(_root);
	@override String get tutorial => 'チュートリアル';
	@override late final _StringsTrainingColoredWordJa coloredWord = _StringsTrainingColoredWordJa._(_root);
	@override late final _StringsTrainingCancelDialogJa cancelDialog = _StringsTrainingCancelDialogJa._(_root);
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

// Path: common.permission
class _StringsCommonPermissionJa extends _StringsCommonPermissionEn {
	_StringsCommonPermissionJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override late final _StringsCommonPermissionOpenSettingsDialogJa openSettingsDialog = _StringsCommonPermissionOpenSettingsDialogJa._(_root);
}

// Path: settings.list
class _StringsSettingsListJa extends _StringsSettingsListEn {
	_StringsSettingsListJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override late final _StringsSettingsListAccountJa account = _StringsSettingsListAccountJa._(_root);
	@override late final _StringsSettingsListLayoutJa layout = _StringsSettingsListLayoutJa._(_root);
	@override late final _StringsSettingsListHelpJa help = _StringsSettingsListHelpJa._(_root);
}

// Path: settings.account
class _StringsSettingsAccountJa extends _StringsSettingsAccountEn {
	_StringsSettingsAccountJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get accountLink => 'アカウント連携';
	@override String get other => 'その他';
	@override String get leave => '退会';
}

// Path: settings.uiStyle
class _StringsSettingsUiStyleJa extends _StringsSettingsUiStyleEn {
	_StringsSettingsUiStyleJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String type({required UIStyle context}) {
		switch (context) {
			case UIStyle.system:
				return 'システム設定';
			case UIStyle.android:
				return 'Android';
			case UIStyle.ios:
				return 'iOS';
		}
	}
}

// Path: settings.themeMode
class _StringsSettingsThemeModeJa extends _StringsSettingsThemeModeEn {
	_StringsSettingsThemeModeJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String type({required ThemeMode context}) {
		switch (context) {
			case ThemeMode.system:
				return 'システム設定';
			case ThemeMode.light:
				return 'ライトモード';
			case ThemeMode.dark:
				return 'ダークモード';
		}
	}
}

// Path: settings.colorStyle
class _StringsSettingsColorStyleJa extends _StringsSettingsColorStyleEn {
	_StringsSettingsColorStyleJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String type({required ColorStyle context}) {
		switch (context) {
			case ColorStyle.dynamicColor:
				return 'ダイナミックカラー';
			case ColorStyle.systemColor:
				return 'システムカラー';
			case ColorStyle.blue:
				return 'ブルー';
			case ColorStyle.purple:
				return 'パープル';
			case ColorStyle.green:
				return 'グリーン';
			case ColorStyle.red:
				return 'レッド';
			case ColorStyle.pink:
				return 'ピンク';
			case ColorStyle.yellow:
				return 'イエロー';
			case ColorStyle.orange:
				return 'オレンジ';
		}
	}
}

// Path: training.trainingType
class _StringsTrainingTrainingTypeJa extends _StringsTrainingTrainingTypeEn {
	_StringsTrainingTrainingTypeJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String title({required TrainingType context}) {
		switch (context) {
			case TrainingType.coloredWord:
				return '色彩識別';
			case TrainingType.themeShiritori:
				return 'お題しりとり';
			case TrainingType.fillInTheBlankCalc:
				return '穴埋め計算';
		}
	}
	@override String timeRequired({required TrainingType context}) {
		switch (context) {
			case TrainingType.coloredWord:
				return '所要時間：30秒';
			case TrainingType.themeShiritori:
				return '所要時間：5分';
			case TrainingType.fillInTheBlankCalc:
				return '所要時間：60秒';
		}
	}
	@override String description({required TrainingType context}) {
		switch (context) {
			case TrainingType.coloredWord:
				return '4種類の色の付いた文字が表示されます。\n文字ではなく、表示された色を答えて下さい。\n\n回答方法は二種類から選ぶことができます。\n・(おすすめ) 声で回答する\n・選択肢から回答する';
			case TrainingType.themeShiritori:
				return '選択肢に表示されたお題限定でしりとりを行います。\nAIとのしりとりを可能な限り続けて下さい。\n\n回答方法は二種類から選ぶことができます。\n・(おすすめ) 声で回答する\n・入力して回答する';
			case TrainingType.fillInTheBlankCalc:
				return '穴が開いた計算式が表示されます。\n計算式が正しくなるように演算子を答えてください。\n\n回答方法は二種類から選ぶことができます。\n・(おすすめ) 声で回答する\n・選択肢から回答する';
		}
	}
}

// Path: training.trainingCard
class _StringsTrainingTrainingCardJa extends _StringsTrainingTrainingCardEn {
	_StringsTrainingTrainingCardJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get inviteSubhead => '今日の脳トレを始めましょう';
	@override String get doneSubhead => '今日のスコア';
	@override String get start => '測定';
}

// Path: training.answerSelection
class _StringsTrainingAnswerSelectionJa extends _StringsTrainingAnswerSelectionEn {
	_StringsTrainingAnswerSelectionJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '回答方法';
	@override String process({required AnswerType context}) {
		switch (context) {
			case AnswerType.voice:
				return '声で回答する';
			case AnswerType.list:
				return '選択肢から回答する';
		}
	}
	@override String recommended({required String answerType}) => '(おすすめ)${answerType}';
}

// Path: training.result
class _StringsTrainingResultJa extends _StringsTrainingResultEn {
	_StringsTrainingResultJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'トレーニング結果';
	@override late final _StringsTrainingResultScoreCardJa scoreCard = _StringsTrainingResultScoreCardJa._(_root);
	@override Map<String, dynamic> get rank => {
		'normal': ({required ResultRank context}) {
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
		},
		'sumo': ({required ResultRank context}) {
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
		},
		'royal': ({required ResultRank context}) {
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
		},
		'beetle': ({required ResultRank context}) {
			switch (context) {
				case ResultRank.excellent:
					return 'ヘラクレスオオカブト';
				case ResultRank.great:
					return 'サタンオオカブト';
				case ResultRank.good:
					return 'エレファントゾウカブト';
				case ResultRank.average:
					return 'カブトムシ';
				case ResultRank.poor:
					return 'ヒメカブト';
			}
		},
		'stagBeetle': ({required ResultRank context}) {
			switch (context) {
				case ResultRank.excellent:
					return 'タランドゥスツヤクワガタ';
				case ResultRank.great:
					return 'オウゴンオニクワガタ';
				case ResultRank.good:
					return 'オオクワガタ';
				case ResultRank.average:
					return 'ノコギリクワガタ';
				case ResultRank.poor:
					return 'コクワガタ';
			}
		},
		'planet': ({required ResultRank context}) {
			switch (context) {
				case ResultRank.excellent:
					return '太陽クラス';
				case ResultRank.great:
					return '木星クラス';
				case ResultRank.good:
					return '地球クラス';
				case ResultRank.average:
					return '月クラス';
				case ResultRank.poor:
					return '小惑星クラス';
			}
		},
		'police': ({required ResultRank context}) {
			switch (context) {
				case ResultRank.excellent:
					return '警視総監';
				case ResultRank.great:
					return '警視長';
				case ResultRank.good:
					return '警部';
				case ResultRank.average:
					return '巡査部長';
				case ResultRank.poor:
					return '巡査';
			}
		},
	};
	@override String category({required RankCategory context}) {
		switch (context) {
			case RankCategory.normal:
				return 'デフォルト';
			case RankCategory.beetle:
				return 'カブトムシ';
			case RankCategory.sumo:
				return '相撲';
			case RankCategory.royal:
				return '爵位';
			case RankCategory.planet:
				return '惑星';
			case RankCategory.police:
				return '警察';
			case RankCategory.stagBeetle:
				return 'クワガタ';
		}
	}
	@override String questions({required int qeustions}) => '${qeustions}問';
	@override String score({required int points}) => '${points}点';
	@override String correctRate({required int rate}) => '正答率：${rate}%';
	@override late final _StringsTrainingResultShareJa share = _StringsTrainingResultShareJa._(_root);
}

// Path: training.coloredWord
class _StringsTrainingColoredWordJa extends _StringsTrainingColoredWordEn {
	_StringsTrainingColoredWordJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String displayWord({required ColoredWord context}) {
		switch (context) {
			case ColoredWord.black:
				return 'くろ';
			case ColoredWord.red:
				return 'あか';
			case ColoredWord.blue:
				return 'あお';
			case ColoredWord.green:
				return 'みどり';
		}
	}
	@override String readWord({required ColoredWord context}) {
		switch (context) {
			case ColoredWord.black:
				return '黒';
			case ColoredWord.red:
				return '赤';
			case ColoredWord.blue:
				return '青';
			case ColoredWord.green:
				return '緑';
		}
	}
}

// Path: training.cancelDialog
class _StringsTrainingCancelDialogJa extends _StringsTrainingCancelDialogEn {
	_StringsTrainingCancelDialogJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '中断しますか？';
	@override String get messages => 'トレーニングの内容は反映されません。';
	@override String get cancel => '続行';
	@override String get ok => '中断';
}

// Path: common.permission.openSettingsDialog
class _StringsCommonPermissionOpenSettingsDialogJa extends _StringsCommonPermissionOpenSettingsDialogEn {
	_StringsCommonPermissionOpenSettingsDialogJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '権限設定のお願い';
	@override String message({required String operation}) => 'この機能を利用するためには、設定アプリを開いて${operation}へのアクセスを許可して下さい。.';
	@override String get okLabel => '設定アプリを開く';
}

// Path: settings.list.account
class _StringsSettingsListAccountJa extends _StringsSettingsListAccountEn {
	_StringsSettingsListAccountJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get head => 'アカウント';
	@override String get account => 'アカウント';
}

// Path: settings.list.layout
class _StringsSettingsListLayoutJa extends _StringsSettingsListLayoutEn {
	_StringsSettingsListLayoutJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get head => 'レイアウト';
	@override String get rankType => 'ランク表記';
	@override String get uiStyle => 'UIスタイル';
	@override String get themeMode => 'テーマ';
	@override String get colorTheme => 'カラーテーマ';
}

// Path: settings.list.help
class _StringsSettingsListHelpJa extends _StringsSettingsListHelpEn {
	_StringsSettingsListHelpJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get head => 'ヘルプ';
	@override String get howToUse => '使い方';
	@override String get contactUs => 'お問い合わせ';
	@override String get developperTwitter => '開発者 X (旧Twitter)';
	@override String get privacyPollicy => 'プライバシーポリシー';
	@override String get license => 'ライセンス';
}

// Path: training.result.scoreCard
class _StringsTrainingResultScoreCardJa extends _StringsTrainingResultScoreCardEn {
	_StringsTrainingResultScoreCardJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '評価';
}

// Path: training.result.share
class _StringsTrainingResultShareJa extends _StringsTrainingResultShareEn {
	_StringsTrainingResultShareJa._(_StringsJa root) : this._root = root, super._(root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get buttonCaption => '共有';
	@override String subject({required String training}) => '${training}を実施しました！';
	@override String body({required String training, required int points}) => '${training}を実施しました！\n私の得点は「${points}」点です✨';
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
			case 'common.permission.openSettingsDialog.title': return 'Request for permission settings';
			case 'common.permission.openSettingsDialog.message': return ({required String operation}) => 'To use this feature, open the Settings app and allow access to the ${operation}.';
			case 'common.permission.openSettingsDialog.okLabel': return 'Open Settings';
			case 'common.camera': return 'Camera';
			case 'common.microphone': return 'Microphone';
			case 'error.failedMessage': return ({required String action}) => '${action} failed.';
			case 'home.todayStatus': return 'Today';
			case 'home.todayNews': return 'News';
			case 'home.thisWeekStatus': return 'Weekly';
			case 'home.dailyTraining': return 'Daily';
			case 'home.completed': return 'Comp';
			case 'introduction.start': return 'はじめる';
			case 'introduction.forFirstUser': return 'はじめての方はこちら';
			case 'introduction.signInWithGoogle': return 'Googleアカウントでログイン';
			case 'introduction.signInWithApple': return 'Appleアカウントでログイン';
			case 'settings.title': return 'Settings';
			case 'settings.list.account.head': return 'Account';
			case 'settings.list.account.account': return 'Account';
			case 'settings.list.layout.head': return 'Layout';
			case 'settings.list.layout.rankType': return 'Rank';
			case 'settings.list.layout.uiStyle': return 'UI Style';
			case 'settings.list.layout.themeMode': return 'ThemeMode';
			case 'settings.list.layout.colorTheme': return 'ColorTheme';
			case 'settings.list.help.head': return 'Help';
			case 'settings.list.help.howToUse': return 'HowToUse';
			case 'settings.list.help.contactUs': return 'Contact us';
			case 'settings.list.help.developperTwitter': return 'Developper X (Twitter)';
			case 'settings.list.help.privacyPollicy': return 'PrivacyPollicy';
			case 'settings.list.help.license': return 'License';
			case 'settings.account.accountLink': return 'Account link';
			case 'settings.account.other': return 'Other';
			case 'settings.account.leave': return 'Leave';
			case 'settings.uiStyle.type': return ({required UIStyle context}) {
				switch (context) {
					case UIStyle.system:
						return 'System';
					case UIStyle.android:
						return 'Android';
					case UIStyle.ios:
						return 'iOS';
				}
			};
			case 'settings.themeMode.type': return ({required ThemeMode context}) {
				switch (context) {
					case ThemeMode.system:
						return 'System';
					case ThemeMode.light:
						return 'Light mode';
					case ThemeMode.dark:
						return 'Dark mode';
				}
			};
			case 'settings.colorStyle.type': return ({required ColorStyle context}) {
				switch (context) {
					case ColorStyle.dynamicColor:
						return 'DynamicColor';
					case ColorStyle.systemColor:
						return 'SystemColor';
					case ColorStyle.blue:
						return 'Blue';
					case ColorStyle.purple:
						return 'Purple';
					case ColorStyle.green:
						return 'Green';
					case ColorStyle.red:
						return 'Red';
					case ColorStyle.pink:
						return 'Pink';
					case ColorStyle.yellow:
						return 'Yellow';
					case ColorStyle.orange:
						return 'Orange';
				}
			};
			case 'training.menu': return 'Menu';
			case 'training.doneMenu': return 'Done';
			case 'training.trainingType.title': return ({required TrainingType context}) {
				switch (context) {
					case TrainingType.coloredWord:
						return 'Colored Word';
					case TrainingType.themeShiritori:
						return 'Shiritori';
					case TrainingType.fillInTheBlankCalc:
						return 'Add Minus';
				}
			};
			case 'training.trainingType.timeRequired': return ({required TrainingType context}) {
				switch (context) {
					case TrainingType.coloredWord:
						return '30 Seconds';
					case TrainingType.themeShiritori:
						return '5 Minuts';
					case TrainingType.fillInTheBlankCalc:
						return '60 Seconds';
				}
			};
			case 'training.trainingType.description': return ({required TrainingType context}) {
				switch (context) {
					case TrainingType.coloredWord:
						return 'Four different colored letters will be displayed.\nPlease answer with the displayed color, not the text.\n\nYou can choose from two answer methods.\n・(Recommended) Answer with voice\n・Answer from the options';
					case TrainingType.themeShiritori:
						return 'Shiritori will be limited to the themes displayed in the options.Please continue to interact with AI as much as possible.\n\nYou can choose from two answer methods.\n・(Recommended) Answer with voice\n・Enter and answer';
					case TrainingType.fillInTheBlankCalc:
						return 'A calculation formula with a hole will be displayed.\nPlease answer the operators so that the formula is correct.\n\nYou can choose from two answer methods.\n・(Recommended) Answer with voice\n・Answer from the options';
				}
			};
			case 'training.answerSelection.title': return 'Answer selection';
			case 'training.answerSelection.process': return ({required AnswerType context}) {
				switch (context) {
					case AnswerType.voice:
						return 'Voice';
					case AnswerType.list:
						return 'Select';
				}
			};
			case 'training.answerSelection.recommended': return ({required String answerType}) => '(Recommended)${answerType}';
			case 'training.trainingCard.inviteSubhead': return 'Let\'s Training!';
			case 'training.trainingCard.doneSubhead': return 'Today Score';
			case 'training.trainingCard.start': return 'Start';
			case 'training.result.title': return 'Result';
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
			case 'training.result.rank.beetle': return ({required ResultRank context}) {
				switch (context) {
					case ResultRank.excellent:
						return 'Hercules Beetle';
					case ResultRank.great:
						return 'Satan Beetle';
					case ResultRank.good:
						return 'Elephant Beetle';
					case ResultRank.average:
						return 'Beetle';
					case ResultRank.poor:
						return 'Small Stag Beetle';
				}
			};
			case 'training.result.rank.stagBeetle': return ({required ResultRank context}) {
				switch (context) {
					case ResultRank.excellent:
						return 'Tarandus glossy stag beetle';
					case ResultRank.great:
						return 'Golden Stag Beetle';
					case ResultRank.good:
						return 'オオクワガタ';
					case ResultRank.average:
						return 'Giant stag beetle';
					case ResultRank.poor:
						return 'Stag beetle';
				}
			};
			case 'training.result.rank.planet': return ({required ResultRank context}) {
				switch (context) {
					case ResultRank.excellent:
						return 'Sun';
					case ResultRank.great:
						return 'Jupiter';
					case ResultRank.good:
						return 'Earth';
					case ResultRank.average:
						return 'Moon';
					case ResultRank.poor:
						return 'asteroid';
				}
			};
			case 'training.result.rank.police': return ({required ResultRank context}) {
				switch (context) {
					case ResultRank.excellent:
						return 'Commissioner';
					case ResultRank.great:
						return 'Superintendent';
					case ResultRank.good:
						return 'Police Inspector';
					case ResultRank.average:
						return 'Sergeant';
					case ResultRank.poor:
						return 'Constable';
				}
			};
			case 'training.result.category': return ({required RankCategory context}) {
				switch (context) {
					case RankCategory.normal:
						return 'Default';
					case RankCategory.beetle:
						return 'Beetle';
					case RankCategory.sumo:
						return 'Sumo';
					case RankCategory.royal:
						return 'Royal';
					case RankCategory.planet:
						return 'Planet';
					case RankCategory.police:
						return 'Police';
					case RankCategory.stagBeetle:
						return 'StagBeetle';
				}
			};
			case 'training.result.questions': return ({required int qeustions}) => '${qeustions} qeustions';
			case 'training.result.score': return ({required int points}) => '${points} points';
			case 'training.result.correctRate': return ({required int rate}) => 'Correct rate: ${rate}%';
			case 'training.result.share.buttonCaption': return 'Share';
			case 'training.result.share.subject': return ({required String training}) => '${training} done!';
			case 'training.result.share.body': return ({required String training, required int points}) => '${training} done\nMy score is ${points} points✨';
			case 'training.tutorial': return 'Tutorial';
			case 'training.coloredWord.displayWord': return ({required ColoredWord context}) {
				switch (context) {
					case ColoredWord.black:
						return 'Black';
					case ColoredWord.red:
						return 'Red';
					case ColoredWord.blue:
						return 'Blue';
					case ColoredWord.green:
						return 'Green';
				}
			};
			case 'training.coloredWord.readWord': return ({required ColoredWord context}) {
				switch (context) {
					case ColoredWord.black:
						return 'Black';
					case ColoredWord.red:
						return 'Red';
					case ColoredWord.blue:
						return 'Blue';
					case ColoredWord.green:
						return 'Green';
				}
			};
			case 'training.cancelDialog.title': return 'Interruption?';
			case 'training.cancelDialog.messages': return 'Training content is not reflected.';
			case 'training.cancelDialog.cancel': return 'Continue';
			case 'training.cancelDialog.ok': return 'Interruption';
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
			case 'common.permission.openSettingsDialog.title': return '権限設定のお願い';
			case 'common.permission.openSettingsDialog.message': return ({required String operation}) => 'この機能を利用するためには、設定アプリを開いて${operation}へのアクセスを許可して下さい。.';
			case 'common.permission.openSettingsDialog.okLabel': return '設定アプリを開く';
			case 'common.camera': return 'カメラ';
			case 'common.microphone': return 'マイク';
			case 'error.failedMessage': return ({required String action}) => '${action}に失敗しました。';
			case 'home.todayStatus': return '今日の状況';
			case 'home.todayNews': return '今日のニュース';
			case 'home.thisWeekStatus': return '今週の状況';
			case 'home.dailyTraining': return '毎日のトレーニング';
			case 'home.completed': return '達成';
			case 'introduction.start': return 'はじめる';
			case 'introduction.forFirstUser': return 'はじめての方はこちら';
			case 'introduction.signInWithGoogle': return 'Googleアカウントを使う';
			case 'introduction.signInWithApple': return 'Appleアカウントを使う';
			case 'settings.title': return '設定';
			case 'settings.list.account.head': return 'アカウント';
			case 'settings.list.account.account': return 'アカウント';
			case 'settings.list.layout.head': return 'レイアウト';
			case 'settings.list.layout.rankType': return 'ランク表記';
			case 'settings.list.layout.uiStyle': return 'UIスタイル';
			case 'settings.list.layout.themeMode': return 'テーマ';
			case 'settings.list.layout.colorTheme': return 'カラーテーマ';
			case 'settings.list.help.head': return 'ヘルプ';
			case 'settings.list.help.howToUse': return '使い方';
			case 'settings.list.help.contactUs': return 'お問い合わせ';
			case 'settings.list.help.developperTwitter': return '開発者 X (旧Twitter)';
			case 'settings.list.help.privacyPollicy': return 'プライバシーポリシー';
			case 'settings.list.help.license': return 'ライセンス';
			case 'settings.account.accountLink': return 'アカウント連携';
			case 'settings.account.other': return 'その他';
			case 'settings.account.leave': return '退会';
			case 'settings.uiStyle.type': return ({required UIStyle context}) {
				switch (context) {
					case UIStyle.system:
						return 'システム設定';
					case UIStyle.android:
						return 'Android';
					case UIStyle.ios:
						return 'iOS';
				}
			};
			case 'settings.themeMode.type': return ({required ThemeMode context}) {
				switch (context) {
					case ThemeMode.system:
						return 'システム設定';
					case ThemeMode.light:
						return 'ライトモード';
					case ThemeMode.dark:
						return 'ダークモード';
				}
			};
			case 'settings.colorStyle.type': return ({required ColorStyle context}) {
				switch (context) {
					case ColorStyle.dynamicColor:
						return 'ダイナミックカラー';
					case ColorStyle.systemColor:
						return 'システムカラー';
					case ColorStyle.blue:
						return 'ブルー';
					case ColorStyle.purple:
						return 'パープル';
					case ColorStyle.green:
						return 'グリーン';
					case ColorStyle.red:
						return 'レッド';
					case ColorStyle.pink:
						return 'ピンク';
					case ColorStyle.yellow:
						return 'イエロー';
					case ColorStyle.orange:
						return 'オレンジ';
				}
			};
			case 'training.menu': return '脳トレメニュー';
			case 'training.doneMenu': return '実施済のトレーニング';
			case 'training.trainingType.title': return ({required TrainingType context}) {
				switch (context) {
					case TrainingType.coloredWord:
						return '色彩識別';
					case TrainingType.themeShiritori:
						return 'お題しりとり';
					case TrainingType.fillInTheBlankCalc:
						return '穴埋め計算';
				}
			};
			case 'training.trainingType.timeRequired': return ({required TrainingType context}) {
				switch (context) {
					case TrainingType.coloredWord:
						return '所要時間：30秒';
					case TrainingType.themeShiritori:
						return '所要時間：5分';
					case TrainingType.fillInTheBlankCalc:
						return '所要時間：60秒';
				}
			};
			case 'training.trainingType.description': return ({required TrainingType context}) {
				switch (context) {
					case TrainingType.coloredWord:
						return '4種類の色の付いた文字が表示されます。\n文字ではなく、表示された色を答えて下さい。\n\n回答方法は二種類から選ぶことができます。\n・(おすすめ) 声で回答する\n・選択肢から回答する';
					case TrainingType.themeShiritori:
						return '選択肢に表示されたお題限定でしりとりを行います。\nAIとのしりとりを可能な限り続けて下さい。\n\n回答方法は二種類から選ぶことができます。\n・(おすすめ) 声で回答する\n・入力して回答する';
					case TrainingType.fillInTheBlankCalc:
						return '穴が開いた計算式が表示されます。\n計算式が正しくなるように演算子を答えてください。\n\n回答方法は二種類から選ぶことができます。\n・(おすすめ) 声で回答する\n・選択肢から回答する';
				}
			};
			case 'training.trainingCard.inviteSubhead': return '今日の脳トレを始めましょう';
			case 'training.trainingCard.doneSubhead': return '今日のスコア';
			case 'training.trainingCard.start': return '測定';
			case 'training.answerSelection.title': return '回答方法';
			case 'training.answerSelection.process': return ({required AnswerType context}) {
				switch (context) {
					case AnswerType.voice:
						return '声で回答する';
					case AnswerType.list:
						return '選択肢から回答する';
				}
			};
			case 'training.answerSelection.recommended': return ({required String answerType}) => '(おすすめ)${answerType}';
			case 'training.result.title': return 'トレーニング結果';
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
			case 'training.result.rank.beetle': return ({required ResultRank context}) {
				switch (context) {
					case ResultRank.excellent:
						return 'ヘラクレスオオカブト';
					case ResultRank.great:
						return 'サタンオオカブト';
					case ResultRank.good:
						return 'エレファントゾウカブト';
					case ResultRank.average:
						return 'カブトムシ';
					case ResultRank.poor:
						return 'ヒメカブト';
				}
			};
			case 'training.result.rank.stagBeetle': return ({required ResultRank context}) {
				switch (context) {
					case ResultRank.excellent:
						return 'タランドゥスツヤクワガタ';
					case ResultRank.great:
						return 'オウゴンオニクワガタ';
					case ResultRank.good:
						return 'オオクワガタ';
					case ResultRank.average:
						return 'ノコギリクワガタ';
					case ResultRank.poor:
						return 'コクワガタ';
				}
			};
			case 'training.result.rank.planet': return ({required ResultRank context}) {
				switch (context) {
					case ResultRank.excellent:
						return '太陽クラス';
					case ResultRank.great:
						return '木星クラス';
					case ResultRank.good:
						return '地球クラス';
					case ResultRank.average:
						return '月クラス';
					case ResultRank.poor:
						return '小惑星クラス';
				}
			};
			case 'training.result.rank.police': return ({required ResultRank context}) {
				switch (context) {
					case ResultRank.excellent:
						return '警視総監';
					case ResultRank.great:
						return '警視長';
					case ResultRank.good:
						return '警部';
					case ResultRank.average:
						return '巡査部長';
					case ResultRank.poor:
						return '巡査';
				}
			};
			case 'training.result.category': return ({required RankCategory context}) {
				switch (context) {
					case RankCategory.normal:
						return 'デフォルト';
					case RankCategory.beetle:
						return 'カブトムシ';
					case RankCategory.sumo:
						return '相撲';
					case RankCategory.royal:
						return '爵位';
					case RankCategory.planet:
						return '惑星';
					case RankCategory.police:
						return '警察';
					case RankCategory.stagBeetle:
						return 'クワガタ';
				}
			};
			case 'training.result.questions': return ({required int qeustions}) => '${qeustions}問';
			case 'training.result.score': return ({required int points}) => '${points}点';
			case 'training.result.correctRate': return ({required int rate}) => '正答率：${rate}%';
			case 'training.result.share.buttonCaption': return '共有';
			case 'training.result.share.subject': return ({required String training}) => '${training}を実施しました！';
			case 'training.result.share.body': return ({required String training, required int points}) => '${training}を実施しました！\n私の得点は「${points}」点です✨';
			case 'training.tutorial': return 'チュートリアル';
			case 'training.coloredWord.displayWord': return ({required ColoredWord context}) {
				switch (context) {
					case ColoredWord.black:
						return 'くろ';
					case ColoredWord.red:
						return 'あか';
					case ColoredWord.blue:
						return 'あお';
					case ColoredWord.green:
						return 'みどり';
				}
			};
			case 'training.coloredWord.readWord': return ({required ColoredWord context}) {
				switch (context) {
					case ColoredWord.black:
						return '黒';
					case ColoredWord.red:
						return '赤';
					case ColoredWord.blue:
						return '青';
					case ColoredWord.green:
						return '緑';
				}
			};
			case 'training.cancelDialog.title': return '中断しますか？';
			case 'training.cancelDialog.messages': return 'トレーニングの内容は反映されません。';
			case 'training.cancelDialog.cancel': return '続行';
			case 'training.cancelDialog.ok': return '中断';
			default: return null;
		}
	}
}
