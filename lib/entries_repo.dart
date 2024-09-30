import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'entries_repo.g.dart';
part 'entries_repo.freezed.dart';

@freezed
class Entry with _$Entry {
  const factory Entry({required String title}) = _Entry;

  factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);
}

class EntriesRepository {
  EntriesRepository(this.client);

  final http.Client client;

  Future<List<Entry>> getEntries() async {
    final response = await http.get(Uri.http('localhost:8080', '/api/entries'));
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    var list = List<Entry>.from(
        json["entries"].map((model) => Entry(title: model["title"])));
    return list;
  }
}

@riverpod
EntriesRepository entriesRepository(EntriesRepositoryRef ref) {
  return EntriesRepository(http.Client());
}

@riverpod
Future<List<Entry>> getEntries(GetEntriesRef ref) {
  return ref.watch(entriesRepositoryProvider).getEntries();
}
