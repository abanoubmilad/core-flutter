import 'dart:async';

import 'package:core_app/app/base/toaster.dart';
import 'package:core_app/app/bloc/toast.dart';

abstract class Bloc {
  final _toasterController = StreamController<Toast>();
  final toasterNotifier = Toaster();

  Stream<Toast> get toaster => _toasterController.stream;

  void fireMessage(String msg) {
    toasterNotifier.fireMessage(msg);
    _toasterController.sink.add(Toast()
      ..addMessage(msg));
  }

  void fireError(String msg) {
    toasterNotifier.fireError(msg);
    _toasterController.sink.add(Toast()
      ..addError(msg));
  }

  void fireSomethingWentWrongMessage() {
    toasterNotifier.fireSomethingWentWrongMessage();
    _toasterController.sink.add(Toast()
      ..addSomethingWentWrongMessage());
  }

  disposeBloc() {
    toasterNotifier.dispose();
    _toasterController.close();
  }
}
