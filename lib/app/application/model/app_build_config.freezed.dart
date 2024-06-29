// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_build_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppBuildConfig {
  Flavor get flavor => throw _privateConstructorUsedError;
  String get appName => throw _privateConstructorUsedError;
  String get packageName => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get buildNumber => throw _privateConstructorUsedError;
  String get buildSignature => throw _privateConstructorUsedError;
  String? get installerStore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppBuildConfigCopyWith<AppBuildConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppBuildConfigCopyWith<$Res> {
  factory $AppBuildConfigCopyWith(
          AppBuildConfig value, $Res Function(AppBuildConfig) then) =
      _$AppBuildConfigCopyWithImpl<$Res, AppBuildConfig>;
  @useResult
  $Res call(
      {Flavor flavor,
      String appName,
      String packageName,
      String version,
      String buildNumber,
      String buildSignature,
      String? installerStore});
}

/// @nodoc
class _$AppBuildConfigCopyWithImpl<$Res, $Val extends AppBuildConfig>
    implements $AppBuildConfigCopyWith<$Res> {
  _$AppBuildConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavor = null,
    Object? appName = null,
    Object? packageName = null,
    Object? version = null,
    Object? buildNumber = null,
    Object? buildSignature = null,
    Object? installerStore = freezed,
  }) {
    return _then(_value.copyWith(
      flavor: null == flavor
          ? _value.flavor
          : flavor // ignore: cast_nullable_to_non_nullable
              as Flavor,
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: null == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
      buildSignature: null == buildSignature
          ? _value.buildSignature
          : buildSignature // ignore: cast_nullable_to_non_nullable
              as String,
      installerStore: freezed == installerStore
          ? _value.installerStore
          : installerStore // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppBuildConfigImplCopyWith<$Res>
    implements $AppBuildConfigCopyWith<$Res> {
  factory _$$AppBuildConfigImplCopyWith(_$AppBuildConfigImpl value,
          $Res Function(_$AppBuildConfigImpl) then) =
      __$$AppBuildConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Flavor flavor,
      String appName,
      String packageName,
      String version,
      String buildNumber,
      String buildSignature,
      String? installerStore});
}

/// @nodoc
class __$$AppBuildConfigImplCopyWithImpl<$Res>
    extends _$AppBuildConfigCopyWithImpl<$Res, _$AppBuildConfigImpl>
    implements _$$AppBuildConfigImplCopyWith<$Res> {
  __$$AppBuildConfigImplCopyWithImpl(
      _$AppBuildConfigImpl _value, $Res Function(_$AppBuildConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavor = null,
    Object? appName = null,
    Object? packageName = null,
    Object? version = null,
    Object? buildNumber = null,
    Object? buildSignature = null,
    Object? installerStore = freezed,
  }) {
    return _then(_$AppBuildConfigImpl(
      flavor: null == flavor
          ? _value.flavor
          : flavor // ignore: cast_nullable_to_non_nullable
              as Flavor,
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: null == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
      buildSignature: null == buildSignature
          ? _value.buildSignature
          : buildSignature // ignore: cast_nullable_to_non_nullable
              as String,
      installerStore: freezed == installerStore
          ? _value.installerStore
          : installerStore // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AppBuildConfigImpl implements _AppBuildConfig {
  const _$AppBuildConfigImpl(
      {required this.flavor,
      required this.appName,
      required this.packageName,
      required this.version,
      required this.buildNumber,
      required this.buildSignature,
      this.installerStore});

  @override
  final Flavor flavor;
  @override
  final String appName;
  @override
  final String packageName;
  @override
  final String version;
  @override
  final String buildNumber;
  @override
  final String buildSignature;
  @override
  final String? installerStore;

  @override
  String toString() {
    return 'AppBuildConfig(flavor: $flavor, appName: $appName, packageName: $packageName, version: $version, buildNumber: $buildNumber, buildSignature: $buildSignature, installerStore: $installerStore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppBuildConfigImpl &&
            (identical(other.flavor, flavor) || other.flavor == flavor) &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.buildNumber, buildNumber) ||
                other.buildNumber == buildNumber) &&
            (identical(other.buildSignature, buildSignature) ||
                other.buildSignature == buildSignature) &&
            (identical(other.installerStore, installerStore) ||
                other.installerStore == installerStore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flavor, appName, packageName,
      version, buildNumber, buildSignature, installerStore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppBuildConfigImplCopyWith<_$AppBuildConfigImpl> get copyWith =>
      __$$AppBuildConfigImplCopyWithImpl<_$AppBuildConfigImpl>(
          this, _$identity);
}

abstract class _AppBuildConfig implements AppBuildConfig {
  const factory _AppBuildConfig(
      {required final Flavor flavor,
      required final String appName,
      required final String packageName,
      required final String version,
      required final String buildNumber,
      required final String buildSignature,
      final String? installerStore}) = _$AppBuildConfigImpl;

  @override
  Flavor get flavor;
  @override
  String get appName;
  @override
  String get packageName;
  @override
  String get version;
  @override
  String get buildNumber;
  @override
  String get buildSignature;
  @override
  String? get installerStore;
  @override
  @JsonKey(ignore: true)
  _$$AppBuildConfigImplCopyWith<_$AppBuildConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
