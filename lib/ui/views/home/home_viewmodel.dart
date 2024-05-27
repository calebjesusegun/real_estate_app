import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../dashboard/dashboard_view.dart';
import '../favourites/favourites_view.dart';
import '../message/message_view.dart';
import '../profile/profile_view.dart';
import '../search/search_view.dart';

class HomeViewModel extends BaseViewModel {
  int _currentNavBarIndex = 2;
  int get currentNavBarIndex => _currentNavBarIndex;

  updateCurrentIndex(int index) {
    _currentNavBarIndex = index;
    rebuildUi();
  }

  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return const SearchView();
      case 1:
        return const MessageView();
      case 2:
        return const DashboardView();
      case 3:
        return const FavouritesView();
      case 4:
        return const ProfileView();
      default:
        return const DashboardView();
    }
  }
}
