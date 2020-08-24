import 'package:core_app/app/bloc/toast.dart';

class ToastPayload<Payload> extends Toast {
  Payload payload;

  void addPayload(Payload payload) {
    this.payload = payload;
  }
}
