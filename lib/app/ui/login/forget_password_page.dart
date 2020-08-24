import 'package:core_app/app/bloc/auth_notifier.dart';
import 'package:core_app/app/common/Validator.dart';
import 'package:core_app/app/extentions/context_ext.dart';
import 'package:core_app/app/extentions/ui_funcs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForgetPasswordPage extends StatelessWidget {
  final _myFocusNodeEmail = FocusNode();

  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return UIAppBarBuilder(
        "Reset password",
        context,
        buildBgContainer(
            context,
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 23)),
                buildFormCard(
                  context,
                  Column(
                    children: <Widget>[
                      Form(
                          key: _formKey,
                          child: buildFormSection(
                              Validator.validateEmail,
                              _myFocusNodeEmail,
                              _emailController,
                              TextInputType.emailAddress,
                              FontAwesomeIcons.envelope,
                              "Email")),
                      buildFormSeparator(),
                      buildMaterialButtonWithDecoration(
                          "Reset", () => _onResetClicked(context))
                    ],
                  ),
                ),
                buildFlatButton("Go Back", () => Navigator.pop(context)),
              ],
            )));
  }

  void _onResetClicked(BuildContext context) {
    if (_formKey.currentState.validate()) {
      provider<AuthNotifier>(context)
          .forgetPassword(_emailController.value.text.trim())
          .then((value) => showSnackBarForToast(context, value));
    }
  }
}
