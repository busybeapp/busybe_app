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

String _$entriesRepositoryHash() => r'6756a883e83bf70fe87aa5f7388c9730f2d88721';

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

typedef EntriesRepositoryRef = AutoDisposeProviderRef<EntriesRepository>;
String _$getEntriesHash() => r'e5ca840f4a7d4cb01eed14df146c6257466b3de4';

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

typedef GetEntriesRef = AutoDisposeFutureProviderRef<List<Entry>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
