import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';

import 'core/presentation/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // TODO remove in production
  await Wakelock.enable();

  runApp(AppWidget());
}
