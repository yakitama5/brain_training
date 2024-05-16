// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_haedlines_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$newsHeadlinesHash() => r'61a923972bd4a2a67984a07416b9a1cccc8460e0';

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

/// See also [newsHeadlines].
@ProviderFor(newsHeadlines)
const newsHeadlinesProvider = NewsHeadlinesFamily();

/// See also [newsHeadlines].
class NewsHeadlinesFamily extends Family {
  /// See also [newsHeadlines].
  const NewsHeadlinesFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'newsHeadlinesProvider';

  /// See also [newsHeadlines].
  NewsHeadlinesProvider call({
    required NewsCountry country,
    required DateTime dateTime,
    required int page,
  }) {
    return NewsHeadlinesProvider(
      country: country,
      dateTime: dateTime,
      page: page,
    );
  }

  @visibleForOverriding
  @override
  NewsHeadlinesProvider getProviderOverride(
    covariant NewsHeadlinesProvider provider,
  ) {
    return call(
      country: provider.country,
      dateTime: provider.dateTime,
      page: provider.page,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      FutureOr<NewsHeadlines> Function(NewsHeadlinesRef ref) create) {
    return _$NewsHeadlinesFamilyOverride(this, create);
  }
}

class _$NewsHeadlinesFamilyOverride implements FamilyOverride {
  _$NewsHeadlinesFamilyOverride(this.overriddenFamily, this.create);

  final FutureOr<NewsHeadlines> Function(NewsHeadlinesRef ref) create;

  @override
  final NewsHeadlinesFamily overriddenFamily;

  @override
  NewsHeadlinesProvider getProviderOverride(
    covariant NewsHeadlinesProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [newsHeadlines].
class NewsHeadlinesProvider extends AutoDisposeFutureProvider<NewsHeadlines> {
  /// See also [newsHeadlines].
  NewsHeadlinesProvider({
    required NewsCountry country,
    required DateTime dateTime,
    required int page,
  }) : this._internal(
          (ref) => newsHeadlines(
            ref as NewsHeadlinesRef,
            country: country,
            dateTime: dateTime,
            page: page,
          ),
          from: newsHeadlinesProvider,
          name: r'newsHeadlinesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$newsHeadlinesHash,
          dependencies: NewsHeadlinesFamily._dependencies,
          allTransitiveDependencies:
              NewsHeadlinesFamily._allTransitiveDependencies,
          country: country,
          dateTime: dateTime,
          page: page,
        );

  NewsHeadlinesProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.country,
    required this.dateTime,
    required this.page,
  }) : super.internal();

  final NewsCountry country;
  final DateTime dateTime;
  final int page;

  @override
  Override overrideWith(
    FutureOr<NewsHeadlines> Function(NewsHeadlinesRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NewsHeadlinesProvider._internal(
        (ref) => create(ref as NewsHeadlinesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        country: country,
        dateTime: dateTime,
        page: page,
      ),
    );
  }

  @override
  ({
    NewsCountry country,
    DateTime dateTime,
    int page,
  }) get argument {
    return (
      country: country,
      dateTime: dateTime,
      page: page,
    );
  }

  @override
  AutoDisposeFutureProviderElement<NewsHeadlines> createElement() {
    return _NewsHeadlinesProviderElement(this);
  }

  NewsHeadlinesProvider _copyWith(
    FutureOr<NewsHeadlines> Function(NewsHeadlinesRef ref) create,
  ) {
    return NewsHeadlinesProvider._internal(
      (ref) => create(ref as NewsHeadlinesRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      country: country,
      dateTime: dateTime,
      page: page,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is NewsHeadlinesProvider &&
        other.country == country &&
        other.dateTime == dateTime &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, country.hashCode);
    hash = _SystemHash.combine(hash, dateTime.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NewsHeadlinesRef on AutoDisposeFutureProviderRef<NewsHeadlines> {
  /// The parameter `country` of this provider.
  NewsCountry get country;

  /// The parameter `dateTime` of this provider.
  DateTime get dateTime;

  /// The parameter `page` of this provider.
  int get page;
}

class _NewsHeadlinesProviderElement
    extends AutoDisposeFutureProviderElement<NewsHeadlines>
    with NewsHeadlinesRef {
  _NewsHeadlinesProviderElement(super.provider);

  @override
  NewsCountry get country => (origin as NewsHeadlinesProvider).country;
  @override
  DateTime get dateTime => (origin as NewsHeadlinesProvider).dateTime;
  @override
  int get page => (origin as NewsHeadlinesProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
