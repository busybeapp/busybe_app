import 'package:clearslate_app/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('app test', () {
    testWidgets('show list of tasks', (tester) async {
      await tester.pumpWidget(const ProviderScope(child: BusyBeApp()));
      await tester.pumpAndSettle();
      expect(find.text('task 1'), findsOneWidget);
      expect(find.text('task 2'), findsOneWidget);
    });
  });
}
