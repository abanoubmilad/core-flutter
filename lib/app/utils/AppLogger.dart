import 'package:logger/logger.dart';

class AppLogger {
  AppLogger._privateConstructor();

  static final AppLogger instance = AppLogger._privateConstructor();
  final logger = Logger(
    printer: PrettyPrinter(),
  );
}
