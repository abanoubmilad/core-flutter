import 'package:core_app/app/bloc/auth_notifier.dart';
import 'package:core_app/app/bloc/profile_bloc.dart';
import 'package:core_app/app/extentions/context_ext.dart';
import 'package:core_app/app/extentions/style_ext.dart';
import 'package:core_app/app/extentions/ui_funcs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UIAppBarBuilder(
        "Profile",
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
                          Consumer<ProfileBloc>(
                              builder: (context, profile, _) =>
                                  buildProfile(profile, context))),
                      Padding(padding: EdgeInsets.only(top: 20)),
                    ]))));
  }

  Widget buildProfile(ProfileBloc block, BuildContext context) {
    if (block.loading) return buildLoading();
    if (block.profile == null)
      return Text(
        "Empty",
        style: boldText(16),
      );

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 10)),
        buildProfilePhoto(block.profile.photoUrl, 120, 120),
        Padding(padding: EdgeInsets.only(top: 30)),
        _buildSection("Id", block.profile.id),
        _buildSection("Name", block.profile.fullName),
        _buildSection("Email", block.profile.email),
        _buildSection("Phone Number", block.profile.phoneNumber),
        _buildSection("Nationa Id", block.profile.nationalId),
        ListTile(
          leading: Icon(Icons.arrow_back),
          title: Text(
            'Logout',
          ),
          onTap: () => provider<AuthNotifier>(context).logout(),
        ),
        Padding(padding: EdgeInsets.only(top: 20)),
      ],
    );
  }

  Widget _buildSection(String title, String content) {
    return ListTile(
      title: Text(title, style: regularText(14)),
      subtitle: Text(
        content ?? "",
        style: boldText(16),
      ),
    );
  }
}
