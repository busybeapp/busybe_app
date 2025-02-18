import 'package:busybe/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SemanticsBinding.instance.ensureSemantics();

  debugSemanticsDisableAnimations = false;

  runApp(
    ProviderScope(child: Semantics(enabled: true, child: const BusyBeApp())),
  );
}
