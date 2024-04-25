// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$newsHash() => r'a9a9d458e2c80581289c527fbcc9b62645bc6ae3';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [news].
@ProviderFor(news)
const newsProvider = NewsFamily();

/// See also [news].
class NewsFamily extends Family {
  /// See also [news].
  const NewsFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'newsProvider';

  /// See also [news].
  NewsProvider call({
    required NewsCountry country,
    required int page,
  }) {
    return NewsProvider(
      country: country,
      page: page,
    );
  }

  @visibleForOverriding
  @override
  NewsProvider getProviderOverride(
    covariant NewsProvider provider,
  ) {
    return call(
      country: provider.country,
      page: provider.page,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(FutureOr<List<News>> Function(NewsRef ref) create) {
    return _$NewsFamilyOverride(this, create);
  }
}

class _$NewsFamilyOverride implements FamilyOverride {
  _$NewsFamilyOverride(this.overriddenFamily, this.create);

  final FutureOr<List<News>> Function(NewsRef ref) create;

  @override
  final NewsFamily overriddenFamily;

  @override
  NewsProvider getProviderOverride(
    covariant NewsProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [news].
class NewsProvider extends AutoDisposeFutureProvider<List<News>> {
  /// See also [news].
  NewsProvider({
    required NewsCountry country,
    required int page,
  }) : this._internal(
          (ref) => news(
            ref as NewsRef,
            country: country,
            page: page,
          ),
          from: newsProvider,
          name: r'newsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$newsHash,
          dependencies: NewsFamily._dependencies,
          allTransitiveDependencies: NewsFamily._allTransitiveDependencies,
          country: country,
          page: page,
        );

  NewsProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.country,
    required this.page,
  }) : super.internal();

  final NewsCountry country;
  final int page;

  @override
  Override overrideWith(
    FutureOr<List<News>> Function(NewsRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NewsProvider._internal(
        (ref) => create(ref as NewsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        country: country,
        page: page,
      ),
    );
  }

  @override
  ({
    NewsCountry country,
    int page,
  }) get argument {
    return (
      country: country,
      page: page,
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<News>> createElement() {
    return _NewsProviderElement(this);
  }

  NewsProvider _copyWith(
    FutureOr<List<News>> Function(NewsRef ref) create,
  ) {
    return NewsProvider._internal(
      (ref) => create(ref as NewsRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      country: country,
      page: page,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is NewsProvider &&
        other.country == country &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, country.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NewsRef on AutoDisposeFutureProviderRef<List<News>> {
  /// The parameter `country` of this provider.
  NewsCountry get country;

  /// The parameter `page` of this provider.
  int get page;
}

class _NewsProviderElement extends AutoDisposeFutureProviderElement<List<News>>
    with NewsRef {
  _NewsProviderElement(super.provider);

  @override
  NewsCountry get country => (origin as NewsProvider).country;
  @override
  int get page => (origin as NewsProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
