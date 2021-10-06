import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wakelock/wakelock.dart';

import 'core/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/LICENSE.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  // TODO lock in portrait

  // TODO remove in production
  await Wakelock.enable();

  runApp(AppWidget());
}
