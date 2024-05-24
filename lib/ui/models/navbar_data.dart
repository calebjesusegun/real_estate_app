import 'package:flutter/material.dart';

class NavBarData {
  final IconData? icon;
  final String? iconPath;

  NavBarData({this.icon, this.iconPath}) {
    assert(icon != null || iconPath != null, "Icon or IconPath must be set.");
  }
}