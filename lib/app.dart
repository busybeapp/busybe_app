  import 'package:busybe/entries_repo.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter_riverpod/flutter_riverpod.dart';

  class BusyBeApp extends StatelessWidget {
    const BusyBeApp({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'busybe',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const InboxCollection(),
      );
    }
  }

  class InboxCollection extends ConsumerWidget {
    const InboxCollection({super.key});

    static const List<String> entries = ['task 1', 'task 2'];

    @override
    Widget build(BuildContext context, WidgetRef ref) {
      final entriesAsync = ref.watch(getEntriesProvider);
      return Scaffold(
        body: Row(
          children: [
            Expanded(
              child: SafeArea(
                child: Column(
                  children: [
                    const ListHeader(),
                    Expanded(child: _buildEntryList(entriesAsync)),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget _buildEntryList(AsyncValue<List<Entry>> entries) {
      return switch (entries) {
        AsyncData(:final value) => ListView.builder(
            itemCount: value.length,
            itemBuilder: (context, index) {
              return _buildEntry(value[index], index);
            },
          ),
        AsyncError() => const Text("oops, something is wrong"),
        _ => const CircularProgressIndicator(),
      };
    }

    Widget _buildEntry(entry, int index) {
      return ListTile(
        leading: const Checkbox(
          value: false,
          onChanged: null,
          shape: CircleBorder(),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        title: Text(entry.title, style: const TextStyle(fontSize: 20)),
        horizontalTitleGap: 1,
      );
    }
  }

  class ListHeader extends StatelessWidget {
    const ListHeader({super.key});

    @override
    Widget build(BuildContext context) {
      return const Padding(
        padding: EdgeInsets.all(23),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Inbox',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              fontFamily: "Kanit",
            ),
          ),
        ),
      );
    }
  }
