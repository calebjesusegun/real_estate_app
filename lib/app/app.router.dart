// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i10;
import 'package:flutter/material.dart';
import 'package:real_estate_app/ui/models/navbar_data.dart' as _i11;
import 'package:real_estate_app/ui/views/dashboard/dashboard_view.dart' as _i5;
import 'package:real_estate_app/ui/views/favourites/favourites_view.dart'
    as _i7;
import 'package:real_estate_app/ui/views/home/home_view.dart' as _i2;
import 'package:real_estate_app/ui/views/message/message_view.dart' as _i8;
import 'package:real_estate_app/ui/views/navigation_bar/navigation_bar_view.dart'
    as _i4;
import 'package:real_estate_app/ui/views/profile/profile_view.dart' as _i9;
import 'package:real_estate_app/ui/views/search/search_view.dart' as _i6;
import 'package:real_estate_app/ui/views/startup/startup_view.dart' as _i3;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i12;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const navigationBarView = '/navigation-bar-view';

  static const dashboardView = '/dashboard-view';

  static const searchView = '/search-view';

  static const favouritesView = '/favourites-view';

  static const messageView = '/message-view';

  static const profileView = '/profile-view';

  static const all = <String>{
    homeView,
    startupView,
    navigationBarView,
    dashboardView,
    searchView,
    favouritesView,
    messageView,
    profileView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.navigationBarView,
      page: _i4.NavigationBarView,
    ),
    _i1.RouteDef(
      Routes.dashboardView,
      page: _i5.DashboardView,
    ),
    _i1.RouteDef(
      Routes.searchView,
      page: _i6.SearchView,
    ),
    _i1.RouteDef(
      Routes.favouritesView,
      page: _i7.FavouritesView,
    ),
    _i1.RouteDef(
      Routes.messageView,
      page: _i8.MessageView,
    ),
    _i1.RouteDef(
      Routes.profileView,
      page: _i9.ProfileView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.NavigationBarView: (data) {
      final args = data.getArgs<NavigationBarViewArguments>(nullOk: false);
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => _i4.NavigationBarView(
            key: args.key,
            navBarItems: args.navBarItems,
            onItemChanged: args.onItemChanged),
        settings: data,
      );
    },
    _i5.DashboardView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i5.DashboardView(),
        settings: data,
      );
    },
    _i6.SearchView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.SearchView(),
        settings: data,
      );
    },
    _i7.FavouritesView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.FavouritesView(),
        settings: data,
      );
    },
    _i8.MessageView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.MessageView(),
        settings: data,
      );
    },
    _i9.ProfileView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.ProfileView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class NavigationBarViewArguments {
  const NavigationBarViewArguments({
    this.key,
    required this.navBarItems,
    required this.onItemChanged,
  });

  final _i10.Key? key;

  final List<_i11.NavBarData> navBarItems;

  final dynamic Function(int) onItemChanged;

  @override
  String toString() {
    return '{"key": "$key", "navBarItems": "$navBarItems", "onItemChanged": "$onItemChanged"}';
  }

  @override
  bool operator ==(covariant NavigationBarViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.navBarItems == navBarItems &&
        other.onItemChanged == onItemChanged;
  }

  @override
  int get hashCode {
    return key.hashCode ^ navBarItems.hashCode ^ onItemChanged.hashCode;
  }
}

extension NavigatorStateExtension on _i12.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNavigationBarView({
    _i10.Key? key,
    required List<_i11.NavBarData> navBarItems,
    required dynamic Function(int) onItemChanged,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.navigationBarView,
        arguments: NavigationBarViewArguments(
            key: key, navBarItems: navBarItems, onItemChanged: onItemChanged),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDashboardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.dashboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSearchView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.searchView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFavouritesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.favouritesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMessageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.messageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNavigationBarView({
    _i10.Key? key,
    required List<_i11.NavBarData> navBarItems,
    required dynamic Function(int) onItemChanged,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.navigationBarView,
        arguments: NavigationBarViewArguments(
            key: key, navBarItems: navBarItems, onItemChanged: onItemChanged),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithDashboardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.dashboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSearchView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.searchView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFavouritesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.favouritesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMessageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.messageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
