import 'package:ci_cd/app_widget.dart';
import 'package:ci_cd/config_reader.dart';
import 'package:ci_cd/environment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();

  MaterialColor primaryColor = Colors.blue;

  switch (env) {
    case Environment.dev:
      break;
    case Environment.prod:
      primaryColor = Colors.red;
      break;
  }

  runApp(Provider.value(
    value: primaryColor,
    child: MyApp(),
  ));
}
