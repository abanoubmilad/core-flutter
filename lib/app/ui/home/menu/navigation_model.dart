import 'package:flutter/material.dart';

class NavigationModel {
  String title;
  IconData icon;

  NavigationModel({this.title, this.icon});
}

List<NavigationModel> navigationItems = [
  NavigationModel(title: "Users", icon: Icons.insert_chart),
  NavigationModel(title: "Firms", icon: Icons.insert_chart),
  NavigationModel(title: "Meetings", icon: Icons.error),
  NavigationModel(title: "Bookings", icon: Icons.search),
  NavigationModel(title: "Settings", icon: Icons.settings),
];
