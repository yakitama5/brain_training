/// Generated file. Do not edit.
///
/// Original: assets/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 26 (13 per locale)
///
/// Built on 2024-07-05 at 06:43 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

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
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

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
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
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
	/// final t = Translations.of(context);
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
	String get save => 'Save';
	late final _StringsNavigationDestinationEn navigationDestination = _StringsNavigationDestinationEn._(_root);
	String get start => 'Start!';
	String get end => 'End';
	late final _StringsPermissionEn permission = _StringsPermissionEn._(_root);
	String get camera => 'Camera';
	String get microphone => 'Microphone';
}

// Path: navigationDestination
class _StringsNavigationDestinationEn {
	_StringsNavigationDestinationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get home => 'Home';
	String get analytics => 'Analytics';
	String get training => 'Training';
	String get coffeBreak => 'Break';
	String get settings => 'Settings';
}

// Path: permission
class _StringsPermissionEn {
	_StringsPermissionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsPermissionOpenSettingsDialogEn openSettingsDialog = _StringsPermissionOpenSettingsDialogEn._(_root);
}

// Path: permission.openSettingsDialog
class _StringsPermissionOpenSettingsDialogEn {
	_StringsPermissionOpenSettingsDialogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Request for permission settings';
	String message({required String operation}) => 'To use this feature, open the Settings app and allow access to the ${operation}.';
	String get okLabel => 'Open Settings';
}

// Path: <root>
class _StringsJa implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsJa.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsJa _root = this; // ignore: unused_field

	// Translations
	@override String get save => '保存';
	@override late final _StringsNavigationDestinationJa navigationDestination = _StringsNavigationDestinationJa._(_root);
	@override String get start => 'スタート！';
	@override String get end => '終了';
	@override late final _StringsPermissionJa permission = _StringsPermissionJa._(_root);
	@override String get camera => 'カメラ';
	@override String get microphone => 'マイク';
}

// Path: navigationDestination
class _StringsNavigationDestinationJa implements _StringsNavigationDestinationEn {
	_StringsNavigationDestinationJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get home => 'ホーム';
	@override String get analytics => '振り返り';
	@override String get training => '脳トレ';
	@override String get coffeBreak => '息抜き';
	@override String get settings => '設定';
}

// Path: permission
class _StringsPermissionJa implements _StringsPermissionEn {
	_StringsPermissionJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override late final _StringsPermissionOpenSettingsDialogJa openSettingsDialog = _StringsPermissionOpenSettingsDialogJa._(_root);
}

// Path: permission.openSettingsDialog
class _StringsPermissionOpenSettingsDialogJa implements _StringsPermissionOpenSettingsDialogEn {
	_StringsPermissionOpenSettingsDialogJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '権限設定のお願い';
	@override String message({required String operation}) => 'この機能を利用するためには、設定アプリを開いて${operation}へのアクセスを許可して下さい。.';
	@override String get okLabel => '設定アプリを開く';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'save': return 'Save';
			case 'navigationDestination.home': return 'Home';
			case 'navigationDestination.analytics': return 'Analytics';
			case 'navigationDestination.training': return 'Training';
			case 'navigationDestination.coffeBreak': return 'Break';
			case 'navigationDestination.settings': return 'Settings';
			case 'start': return 'Start!';
			case 'end': return 'End';
			case 'permission.openSettingsDialog.title': return 'Request for permission settings';
			case 'permission.openSettingsDialog.message': return ({required String operation}) => 'To use this feature, open the Settings app and allow access to the ${operation}.';
			case 'permission.openSettingsDialog.okLabel': return 'Open Settings';
			case 'camera': return 'Camera';
			case 'microphone': return 'Microphone';
			default: return null;
		}
	}
}

extension on _StringsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'save': return '保存';
			case 'navigationDestination.home': return 'ホーム';
			case 'navigationDestination.analytics': return '振り返り';
			case 'navigationDestination.training': return '脳トレ';
			case 'navigationDestination.coffeBreak': return '息抜き';
			case 'navigationDestination.settings': return '設定';
			case 'start': return 'スタート！';
			case 'end': return '終了';
			case 'permission.openSettingsDialog.title': return '権限設定のお願い';
			case 'permission.openSettingsDialog.message': return ({required String operation}) => 'この機能を利用するためには、設定アプリを開いて${operation}へのアクセスを許可して下さい。.';
			case 'permission.openSettingsDialog.okLabel': return '設定アプリを開く';
			case 'camera': return 'カメラ';
			case 'microphone': return 'マイク';
			default: return null;
		}
	}
}
