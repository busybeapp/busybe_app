import 'package:busybe/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('app test', () {
    testWidgets('show list of entries', (tester) async {
      await tester.pumpWidget(const ProviderScope(child: BusyBeApp()));
      await tester.pumpAndSettle();
      expect(find.text('popo 1'), findsOneWidget);
      expect(find.text('kuku 2'), findsOneWidget);
    });
  });
}
