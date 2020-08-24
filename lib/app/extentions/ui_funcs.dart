import 'package:core_app/app/bloc/auth_notifier.dart';
import 'package:core_app/app/common/Validator.dart';
import 'package:core_app/app/extentions/context_ext.dart';
import 'package:core_app/app/extentions/style_ext.dart';
import 'package:core_app/app/extentions/ui_ext.dart';
import 'package:core_app/app/ui/home/menu/collapsing_list_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persist_theme/data/models/theme_model.dart';

Widget buildFormSeparator() {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 1,
        color: silverGray,
      ));
}

Container buildMaterialButtonWithDecoration(String title, Function onPressed) {
  return Container(
    margin: EdgeInsets.only(top: 50, bottom: 30),
    decoration: buildButtonBoxDecoration(),
    child: buildMaterialButton(title, onPressed),
  );
}

MaterialButton buildMaterialButton(String title, Function onPressed) {
  return MaterialButton(
    highlightColor: Colors.transparent,
    splashColor: buttonGradientEnd,
    //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 42),
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 25, fontFamily: "WorkSansBold"),
      ),
    ),
    onPressed: onPressed,
  );
}

BoxDecoration buildButtonBoxDecoration() {
  return new BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(5)),
    boxShadow: <BoxShadow>[
      BoxShadow(
        color: buttonGradientStart,
        offset: Offset(1, 3),
        blurRadius: 10,
      ),
      BoxShadow(
        color: buttonGradientEnd,
        offset: Offset(1, 3),
        blurRadius: 10,
      ),
    ],
    gradient: buildButtonGradient(),
  );
}

BoxDecoration buildMenuButtonBoxDecoration() {
  return new BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(5)),
    gradient: buildButtonGradient(),
  );
}

LinearGradient buildButtonGradient() {
  return LinearGradient(
      colors: [buttonGradientEnd, buttonGradientStart],
      begin: const FractionalOffset(0.2, 0.2),
      end: const FractionalOffset(1, 1),
      stops: [0, 1],
      tileMode: TileMode.clamp);
}

Padding buildFlatButton(String title, Function onPressed) {
  return Padding(
    padding: EdgeInsets.only(top: 40),
    child: FlatButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.white,
              fontSize: 20,
              fontFamily: "WorkSansMedium"),
        )),
  );
}

Padding buildFormSection(Function(String) validator,
    FocusNode focusNode,
    TextEditingController controller,
    TextInputType inputType,
    IconData icon,
    String hint,
    {TextCapitalization textCapitalization = TextCapitalization.none,
      bool obscureText = false,
      Widget suffixIcon}) {
  return Padding(
    padding: EdgeInsets.only(top: 20, bottom: 10, left: 25, right: 25),
    child: TextFormField(
      validator: validator,
      focusNode: focusNode,
      controller: controller,
      obscureText: obscureText,
      keyboardType: inputType,
      textCapitalization: textCapitalization,
      style: TextStyle(fontFamily: "WorkSansMedium", fontSize: 16),
      decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            icon,
            size: 22,
            color: silverGray,
          ),
          hintText: hint,
          hintStyle: TextStyle(fontFamily: "WorkSansMedium", fontSize: 16),
          suffixIcon: suffixIcon),
    ),
  );
}

Padding buildFormPasswordSection(Function(String) validator,
    FocusNode focusNode,
    TextEditingController controller,
    String hint,
    bool obscureText,
    Function onTap) {
  return buildFormSection(validator, focusNode, controller,
      TextInputType.visiblePassword, FontAwesomeIcons.lock, hint,
      obscureText: obscureText,
      suffixIcon: GestureDetector(
        onTap: () => onTap(),
        child: Icon(
          obscureText ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash,
          size: 22,
          color: silverGray,
        ),
      ));
}

GestureDetector buildCircleButton(BuildContext context, Icon icon,
    Function onTap) {
  return GestureDetector(
    onTap: () => onTap(),
    child: Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: provider<ThemeModel>(context).theme.backgroundColor,
      ),
      child: icon,
    ),
  );
}

Padding buildTwoSideSeparator(String title) {
  return Padding(
    padding: EdgeInsets.only(top: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.white10,
                  Colors.white,
                ],
                begin: const FractionalOffset(0, 0),
                end: const FractionalOffset(1, 1),
                stops: [0, 1],
                tileMode: TileMode.clamp),
          ),
          width: 100,
          height: 1,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: "WorkSansMedium"),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white10,
                ],
                begin: const FractionalOffset(0, 0),
                end: const FractionalOffset(1, 1),
                stops: [0, 1],
                tileMode: TileMode.clamp),
          ),
          width: 100,
          height: 1,
        ),
      ],
    ),
  );
}

Padding buildAppLogo(double width, double height) {
  return Padding(
    padding: EdgeInsets.only(top: 20),
    child: Image(
        width: width,
        height: height,
        fit: BoxFit.fill,
        image: AssetImage('assets/img/login_logo.png')),
  );
}

Widget buildProfilePhoto(String photoUrl, double width, double height) {
  return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        width: width,
        height: height,
        child: CircleAvatar(
          backgroundImage: Validator.hasUrlPhoto(photoUrl)
              ? NetworkImage(photoUrl)
              : AssetImage('assets/img/login_logo.png'),
        ),
      ));
}

Widget buildBgContainer(BuildContext context, Widget child) {
  return Container(
    width: getScreenWidth(context),
    decoration: BoxDecoration(
      gradient: LinearGradient(
          colors: [bgGradientStart, bgGradientEnd],
          begin: const FractionalOffset(0, 0),
          end: const FractionalOffset(1, 1),
          stops: [0, 1],
          tileMode: TileMode.clamp),
    ),
    child: child,
  );
}

Widget buildScrollable(BuildContext context, Widget child) {
  return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
            child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: child));
      });
}

Widget buildBoxConstrained(BuildContext context, Widget child) {
  return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: child);
      });
}

Widget buildFormContainer(BuildContext context, Widget child,
    {double formHeight}) {
  return Container(
      width: getPreferredFormWidth(context), height: formHeight, child: child);
}

Widget buildFormCard(BuildContext context, Widget child, {double formHeight}) {
  return buildFormContainer(
      context,
      Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: child));
}

Widget buildFormCardScrollable(BuildContext context, Widget child) {
  return buildScrollable(context, buildFormCard(context, child));
}

AppBar _buildAppBar(String title) => AppBar(title: Text(title));

Widget UIBuilder(Widget builder,
    {Widget drawer, PreferredSizeWidget appBar, Color scrimColor}) {
  return SafeArea(
      child: Scaffold(
          appBar: appBar,
          drawer: drawer,
          drawerScrimColor: scrimColor,
          body: builder));
}

Widget UIAppBarBuilder(String title, BuildContext context, Widget builder,
    {Color scrimColor}) {
  return provider<AuthNotifier>(context).isLoggedIn
      ? UIBuilder(builder,
      drawer: CollapsingNavigationDrawer(),
      appBar: _buildAppBar(title),
      scrimColor: isWebPlatform() ? Colors.transparent : scrimColor)
      : UIBuilder(builder, appBar: _buildAppBar(title));
}

Widget buildLoading() {
  return SpinKitRipple(
    color: Colors.blue,
    size: 50.0,
  );
}
