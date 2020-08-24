import 'package:core_app/app/bloc/auth_notifier.dart';
import 'package:core_app/app/extentions/context_ext.dart';
import 'package:core_app/app/extentions/ui_funcs.dart';
import 'package:flutter/material.dart';
import 'package:persist_theme/persist_theme.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UIAppBarBuilder(
        "Settings",
        context,
        buildBgContainer(
            context,
            buildScrollable(
                context,
                Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 20)),
                      buildFormCard(
                          context,
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Divider(),
                              ListTile(
                                leading: Icon(Icons.info),
                                title: Text(
                                  "What's New",
                                ),
                                onTap: () {},
                              ),
                              ListTile(
                                leading: Icon(Icons.settings),
                                title: Text(
                                  'Settings',
                                ),
                                onTap: () {},
                              ),
                              Divider(),
                              DarkModeSwitch(),
                              Divider(),
                              ListTile(
                                leading: Icon(Icons.arrow_back),
                                title: Text(
                                  'Logout',
                                ),
                                onTap: () =>
                                    provider<AuthNotifier>(context).logout(),
                              )
                            ],
                          )),
                      Padding(padding: EdgeInsets.only(top: 20)),
                    ]))));
  }
}
