import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'entries_repo.freezed.dart';
part 'entries_repo.g.dart';

@freezed
class Entry with _$Entry {
  const factory Entry({required String title}) = _Entry;

  factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);
}

class EntriesRepository {
  final Dio dio = Dio();

  EntriesRepository(String cloudUrl) {
    dio.options.baseUrl = cloudUrl;
  }

  Future<List<Entry>> getEntries() async {
    final response = await dio.get("/api/entries");
    return List<Entry>.from(
        response.data["entries"].map((model) => Entry(title: model["title"])));
  }
}

@riverpod
EntriesRepository entriesRepository(EntriesRepositoryRef ref) {
  return EntriesRepository(const String.fromEnvironment('CLOUD_URL',
      defaultValue: 'https://clear-slate-8b4de92f5776.herokuapp.com'));
}

@riverpod
Future<List<Entry>> getEntries(GetEntriesRef ref) {
  return ref.watch(entriesRepositoryProvider).getEntries();
}
