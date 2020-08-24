import 'package:core_app/app/bloc/toast.dart';
import 'package:core_app/app/extentions/style_ext.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void showSnackBar(BuildContext context, String msg,
    {Color bgColor = darkGray}) {
  Flushbar(
    flushbarPosition: FlushbarPosition.TOP,
    flushbarStyle: FlushbarStyle.FLOATING,
    reverseAnimationCurve: Curves.decelerate,
    forwardAnimationCurve: Curves.elasticOut,
    backgroundColor: bgColor,
    duration: Duration(seconds: 3),
    messageText: Text(
      msg,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Colors.white, fontSize: 16, fontFamily: "WorkSansMedium"),
    ),
  ).show(context);
}

void showSnackBarError(BuildContext context, String msg) {
  showSnackBar(context, msg, bgColor: redError);
}

void showSnackBarForToast(BuildContext context, Toast toast) {
  if (toast.message == null || toast.message.isEmpty) return;
  if (toast.success)
    showSnackBar(context, toast.message);
  else
    showSnackBarError(context, toast.message);
}

B provider<B>(BuildContext context) => Provider.of<B>(context, listen: false);

B providerListenEnabled<B>(BuildContext context) =>
    Provider.of<B>(context, listen: true);
