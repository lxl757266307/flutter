import 'package:flutter/material.dart';

import 'theme/CustomeTheme.dart';
import 'generated/l10n.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [S.delegate],
      // title: S.of(context).title,
      home: CustomeThreme(),
    );
  }
}
