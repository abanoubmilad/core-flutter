import 'package:core_app/app/extentions/style_ext.dart';
import 'package:core_app/app/extentions/ui_funcs.dart';
import 'package:core_app/app/ui/base/base_state.dart';
import 'package:core_app/app/ui/login/login_form.dart';
import 'package:core_app/app/ui/login/register_form.dart';
import 'package:core_app/app/utils/bubble_indication_painter.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends BaseState<LoginPage> {
  PageController _pageController;

  var _leftColor = Colors.black;
  var _rightColor = Colors.white;

  @mustCallSuper
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return UIAppBarBuilder(
        "Welcome",
        context,
        buildBgContainer(
            context,
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildAppLogo(100, 100),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: _buildMenuBar(context),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Expanded(
                    flex: 1,
                    child: PageView(
                      controller: _pageController,
                      onPageChanged: (i) {
                        if (i == 0) {
                          setState(() {
                            _rightColor = Colors.white;
                            _leftColor = Colors.black;
                          });
                        } else if (i == 1) {
                          setState(() {
                            _rightColor = Colors.black;
                            _leftColor = Colors.white;
                          });
                        }
                      },
                      children: <Widget>[LoginForm(), RegisterForm()],
                    ))
              ],
            )));
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  Widget _buildMenuBar(BuildContext context) {
    final formWidth = getPreferredFormWidth(context);
    return Container(
      width: formWidth,
      height: 60,
      decoration: BoxDecoration(
        color: alphaGray,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: CustomPaint(
        painter: TabIndicationPainter(
            dxEntry: formWidth / 8,
            dy: 30,
            dxTarget: 3 * formWidth / 8,
            radius: 20,
            pageController: _pageController),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: _onSignInButtonPress,
                child: Text(
                  "Existing",
                  style: TextStyle(
                      color: _leftColor,
                      fontSize: 16,
                      fontFamily: "WorkSansMedium"),
                ),
              ),
            ),
            //Container(height: 33, width: 1, color: Colors.white),
            Expanded(
              child: FlatButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: _onSignUpButtonPress,
                child: Text(
                  "New",
                  style: TextStyle(
                      color: _rightColor,
                      fontSize: 16,
                      fontFamily: "WorkSansMedium"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onSignInButtonPress() {
    _pageController.animateToPage(0,
        duration: Duration(milliseconds: 400), curve: Curves.decelerate);
  }

  void _onSignUpButtonPress() {
    _pageController?.animateToPage(1,
        duration: Duration(milliseconds: 400), curve: Curves.decelerate);
  }
}
