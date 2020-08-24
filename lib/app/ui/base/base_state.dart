import 'package:flutter/material.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T>
    with WidgetsBindingObserver {
  bool _canTouchUi = true;

  bool get canShowUI => _canTouchUi;

  onPaused() {}

  onResumed() {}

  @mustCallSuper
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @mustCallSuper
  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.paused) {
      // went to Background
      _canTouchUi = false;
      onPaused();
    }
    if (state == AppLifecycleState.resumed) {
      // came back to Foreground
      _canTouchUi = true;
      onResumed();
    }
  }
}
