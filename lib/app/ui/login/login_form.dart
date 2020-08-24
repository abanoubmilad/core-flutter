import 'package:core_app/app/bloc/auth_notifier.dart';
import 'package:core_app/app/common/Validator.dart';
import 'package:core_app/app/extentions/ui_funcs.dart';
import 'package:core_app/app/ui/base/base_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../extentions/context_ext.dart';
import '../../extentions/nav_ext.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends BaseState<LoginForm> {
  var _obscureText = true;

  final _formKey = GlobalKey<FormState>();

  final myFocusNodeEmailLogin = FocusNode();
  final myFocusNodePasswordLogin = FocusNode();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    myFocusNodeEmailLogin.dispose();
    myFocusNodePasswordLogin.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return buildScrollable(
        context,
        Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                buildFormCard(
                  context,
                  Column(
                    children: <Widget>[
                      buildFormSection(
                          Validator.validateEmail,
                          myFocusNodeEmailLogin,
                          _emailController,
                          TextInputType.emailAddress,
                          FontAwesomeIcons.envelope,
                          "Email"),
                      buildFormSeparator(),
                      buildFormPasswordSection(
                          Validator.validatePassword,
                          myFocusNodePasswordLogin,
                          _passwordController,
                          "Password",
                          _obscureText,
                          _toggleLogin),
                      buildFormSeparator(),
                      buildMaterialButtonWithDecoration(
                          "Sign In", () => _onLoginClicked(context)),
                    ],
                  ),
                ),
                buildFlatButton("Forget Password",
                    () => Navigator.pushNamed(context, ROUTE_FORGET)),
                buildTwoSideSeparator("or"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _buildFacebookButton(() {
                      provider<AuthNotifier>(context).loginFacebook().then(
                          (value) => showSnackBarForToast(context, value));
                    }),
                    _buildGmailButton(),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 50)),
              ],
            )));
  }

  Padding _buildGmailButton() {
    return Padding(
        padding: EdgeInsets.only(top: 10),
        child: buildCircleButton(
            context,
            new Icon(
              FontAwesomeIcons.google,
              color: Color(0xFF0084ff),
            ),
            () => showSnackBar(context, "Google button pressed")));
  }

  Padding _buildFacebookButton(Function onTap) {
    return Padding(
      padding: EdgeInsets.only(top: 10, right: 40),
      child: buildCircleButton(
          context,
          new Icon(
            FontAwesomeIcons.facebookF,
            color: Color(0xFF0084ff),
          ),
          onTap),
    );
  }

  void _toggleLogin() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _onLoginClicked(BuildContext context) {
    if (_formKey.currentState.validate()) {
      provider<AuthNotifier>(context)
          .login(_emailController.value.text.trim(),
              _passwordController.value.text)
          .then((value) => showSnackBarForToast(context, value));
    }
  }
}
