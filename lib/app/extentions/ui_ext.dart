import 'package:core_app/app/extentions/context_ext.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:persist_theme/persist_theme.dart';

ThemeModel themeOf(BuildContext context) {
  return provider<ThemeModel>(context);
}

bool isWebPlatform() => kIsWeb;
