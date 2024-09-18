import 'package:clearslate_app/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('app test', () {
    testWidgets('show list of tasks', (tester) async {
      await tester.pumpWidget(const MyApp());
      expect(find.text('task1'), findsOneWidget);
    });
  });
}
