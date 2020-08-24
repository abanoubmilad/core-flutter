import 'package:core_app/app/bloc/profile_bloc.dart';
import 'package:core_app/app/extentions/nav_ext.dart';
import 'package:core_app/app/extentions/style_ext.dart';
import 'package:core_app/app/extentions/ui_funcs.dart';
import 'package:core_app/app/ui/home/menu/collapsing_list_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

export 'collapsing_list_tile_widget.dart';
export 'collapsing_navigation_drawer_widget.dart';
export 'navigation_model.dart';

class CollapsingNavigationDrawer extends StatefulWidget {
  @override
  _CollapsingNavigationDrawerState createState() {
    return new _CollapsingNavigationDrawerState();
  }
}

class _CollapsingNavigationDrawerState extends State<CollapsingNavigationDrawer>
    with SingleTickerProviderStateMixin {
  double maxWidth = 210;
  double minWidth = 70;
  bool isCollapsed = false;
  AnimationController _animationController;
  Animation<double> widthAnimation;
  int currentSelectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    widthAnimation = Tween<double>(begin: maxWidth, end: minWidth)
        .animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, widget) => getWidget(context, widget),
    );
  }

  Widget getWidget(BuildContext context, widget) {
    return Material(
      elevation: 80.0,
      child: Container(
        width: widthAnimation.value,
        child: Column(
          children: <Widget>[
            Container(height: 15),
            Consumer<ProfileBloc>(
                builder: (context, profile, _) =>
                    buildProfilePhoto(profile.profile?.photoUrl, 35, 35)),
            Container(height: 30),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, counter) {
                  return Divider(height: 12.0, color: silverGray);
                },
                itemBuilder: (context, counter) {
                  return CollapsingListTile(
                    onTap: () {
                      setState(() {
                        currentSelectedIndex = counter;
                      });
                      navigateMenu(context, currentSelectedIndex);
                    },
                    isSelected: currentSelectedIndex == counter,
                    title: navigationItems[counter].title,
                    icon: navigationItems[counter].icon,
                    animationController: _animationController,
                  );
                },
                itemCount: navigationItems.length,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isCollapsed = !isCollapsed;
                  isCollapsed
                      ? _animationController.forward()
                      : _animationController.reverse();
                });
              },
              child: AnimatedIcon(
                icon: AnimatedIcons.close_menu,
                progress: _animationController,
                color: buttonGradientStart,
                size: 50.0,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
