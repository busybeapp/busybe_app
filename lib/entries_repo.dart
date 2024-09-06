import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;

part 'entries_repo.freezed.dart';

@freezed
class Entry with _$Entry {
  const factory Entry({required String title}) = _Entry;
}

Future<http.Response> getEntries() {
  return http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
}