import 'package:core_app/app/bloc/auth_notifier.dart';
import 'package:core_app/app/bloc/profile_bloc.dart';
import 'package:core_app/app/bloc/users_bloc.dart';
import 'package:core_app/app/extentions/nav_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:persist_theme/persist_theme.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) =>
          ThemeModel()
            ..init()),
          ChangeNotifierProvider(create: (_) =>
          AuthNotifier()
            ..init(), lazy: false,),
          ChangeNotifierProvider(create: (_) =>
          ProfileBloc()
            ..init()),
          ChangeNotifierProvider(create: (_) =>
          UsersBloc()
            ..init()),
        ],
        child: Consumer<ThemeModel>(
            builder: (context, model, _) =>
                Consumer<AuthNotifier>(
                    builder: (context, auth, _) =>
                        MaterialApp(
                            debugShowCheckedModeBanner: true,
                            title: 'Bookings Dashboard',
                            theme: model.theme,
                            routes: buildAppRoutes()))));
  }
}
