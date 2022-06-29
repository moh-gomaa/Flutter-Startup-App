import 'package:flutter/material.dart';

import 'Models/data_change_lang.dart';
import 'Screens/Intro.dart';
import 'Services/cookies_class.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  String? _lang = "";
  String _screen = "";

  _lang = await (getValuesSF("lang"));

  if (_lang!.isEmpty) {
    _lang = "en";
    _screen = "/login";
  } else {
    _screen = "/lang";
  }

  runApp(Intro(Data(lang: _lang, sec: 0, screen: _screen, sec2: 5)));
}


