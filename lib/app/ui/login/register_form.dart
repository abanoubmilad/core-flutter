import 'package:core_app/app/bloc/auth_notifier.dart';
import 'package:core_app/app/common/Validator.dart';
import 'package:core_app/app/extentions/ui_funcs.dart';
import 'package:core_app/app/ui/base/base_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../extentions/context_ext.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends BaseState<RegisterForm>
    with SingleTickerProviderStateMixin {
  var _obscureText = true;
  var _obscureTextConfirm = true;

  final myFocusNodePassword = FocusNode();
  final myFocusNodePasswordConfirm = FocusNode();
  final myFocusNodeEmail = FocusNode();
  final myFocusNodeNationalId = FocusNode();
  final myFocusNodePhoneNumber = FocusNode();
  final myFocusNodeName = FocusNode();

  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _nationalIdController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    myFocusNodePassword.dispose();
    myFocusNodePasswordConfirm.dispose();
    myFocusNodeEmail.dispose();
    myFocusNodeNationalId.dispose();
    myFocusNodePhoneNumber.dispose();
    myFocusNodeName.dispose();
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
                          Validator.validateName,
                          myFocusNodeName,
                          _nameController,
                          TextInputType.text,
                          FontAwesomeIcons.user,
                          "Full Name",
                          textCapitalization: TextCapitalization.words),
                      buildFormSeparator(),
                      buildFormSection(
                          Validator.validatePhoneNumber,
                          myFocusNodePhoneNumber,
                          _phoneNumberController,
                          TextInputType.phone,
                          FontAwesomeIcons.phone,
                          "Phone Number"),
                      buildFormSeparator(),
                      buildFormSection(
                          Validator.validateNationalId,
                          myFocusNodeNationalId,
                          _nationalIdController,
                          TextInputType.numberWithOptions(
                              signed: false, decimal: false),
                          FontAwesomeIcons.idCard,
                          "Nationa Id"),
                      buildFormSeparator(),
                      buildFormSection(
                          Validator.validateEmail,
                          myFocusNodeEmail,
                          _emailController,
                          TextInputType.emailAddress,
                          FontAwesomeIcons.envelope,
                          "Email"),
                      buildFormSeparator(),
                      buildFormPasswordSection(
                          Validator.validatePassword,
                          myFocusNodePassword,
                          _passwordController,
                          "Password",
                          _obscureText,
                          _toggleRegister),
                      buildFormSeparator(),
                      buildFormPasswordSection(
                          (text) => Validator.validateConfirmPassword(
                              text, _passwordController.value.text),
                          myFocusNodePasswordConfirm,
                          _confirmPasswordController,
                          "Confirm Password",
                          _obscureTextConfirm,
                          _toggleSignUpConfirm),
                      buildFormSeparator(),
                      buildMaterialButtonWithDecoration(
                          "Register", () => _onRegisterClicked(context))
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 50)),
              ],
            )));
  }

  void _toggleRegister() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _toggleSignUpConfirm() {
    setState(() {
      _obscureTextConfirm = !_obscureTextConfirm;
    });
  }

  void _onRegisterClicked(BuildContext context) {
    if (_formKey.currentState.validate()) {
      provider<AuthNotifier>(context)
          .register(
              _emailController.value.text.trim(),
              _passwordController.value.text,
              _nameController.value.text.trim(),
              _nationalIdController.value.text.trim(),
              _phoneNumberController.value.text.trim())
          .then((value) => showSnackBarForToast(context, value));
    }
  }
}
