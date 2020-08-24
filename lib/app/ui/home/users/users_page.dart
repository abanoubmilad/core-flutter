import 'package:core_app/app/bloc/users_bloc.dart';
import 'package:core_app/app/extentions/context_ext.dart';
import 'package:core_app/app/extentions/style_ext.dart';
import 'package:core_app/app/extentions/ui_funcs.dart';
import 'package:core_app/app/ui/home/users/user_row.dart';
import 'package:flutter/material.dart';
import 'package:persist_theme/persist_theme.dart';
import 'package:provider/provider.dart';
import 'package:responsive_grid/responsive_grid.dart';

class UsersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UIAppBarBuilder(
        "Users",
        context,
        Column(children: <Widget>[
          Expanded(
              child: Container(
            color: provider<ThemeModel>(context).backgroundColor,
            child: Consumer<UsersBloc>(
                builder: (context, bloc, _) => buildUsers(bloc)),
          ))
        ]));
  }

  Widget buildUsers(UsersBloc bloc) {
    if (bloc.loading) return buildLoading();
    if (bloc.users == null || bloc.users.isEmpty)
      return Text(
        "Empty",
        style: boldText(16),
      );

    return ResponsiveGridList(
        desiredItemWidth: 400,
        minSpacing: 10,
        children: bloc.users.map((item) => UserRow(item)).toList());
  }
}
