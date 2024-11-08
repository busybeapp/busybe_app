// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entries_repo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EntryImpl _$$EntryImplFromJson(Map<String, dynamic> json) => _$EntryImpl(
      title: json['title'] as String,
    );

Map<String, dynamic> _$$EntryImplToJson(_$EntryImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$entriesRepositoryHash() => r'6c526001a8a3a36211d57cf6ba34cd5016f44e26';

/// See also [entriesRepository].
@ProviderFor(entriesRepository)
final entriesRepositoryProvider =
    AutoDisposeProvider<EntriesRepository>.internal(
  entriesRepository,
  name: r'entriesRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$entriesRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef EntriesRepositoryRef = AutoDisposeProviderRef<EntriesRepository>;
String _$getEntriesHash() => r'41b223aae052416398ccb2e0800fafc53e1836bd';

/// See also [getEntries].
@ProviderFor(getEntries)
final getEntriesProvider = AutoDisposeFutureProvider<List<Entry>>.internal(
  getEntries,
  name: r'getEntriesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getEntriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetEntriesRef = AutoDisposeFutureProviderRef<List<Entry>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
