class Toast {
  String message;
  bool success = true;

  void addMessage(String msg) {
    this.message = msg;
  }

  void addError(String msg) {
    this.message = msg;
    success = false;
  }

  void addSomethingWentWrongMessage() {
    addError("Something went wrong.");
  }
}
