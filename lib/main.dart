import 'package:core_app/app/app.dart';
import 'package:core_app/app/config/environment.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:logging/logging.dart';

void main() {
  // Displaying logs
  if (kDebugMode) {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((record) {
      print(
          '${record.loggerName} | ${record.level.name}: ${record.time}: ${record
              .message}');
    });
  }

  // build variants
  FlavorConfig(
      environment: FlavorEnvironment.DEV, variables: developmentEnvironment);
//  FlavorConfig(
//      environment: FlavorEnvironment.PROD, variables: productionEnvironment);
  runApp(App());
}
