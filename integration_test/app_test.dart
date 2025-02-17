  import 'package:integration_test/integration_test.dart';
  import './entries_test.dart' as entries_test;

  // Aggregation of all component tests
  void main() {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    entries_test.main();
  }
