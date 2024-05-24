// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i5;
import 'package:flutter/material.dart';
import 'package:real_estate_app/ui/models/navbar_data.dart' as _i6;
import 'package:real_estate_app/ui/views/home/home_view.dart' as _i2;
import 'package:real_estate_app/ui/views/navigation_bar/navigation_bar_view.dart'
    as _i4;
import 'package:real_estate_app/ui/views/startup/startup_view.dart' as _i3;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i7;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const navigationBarView = '/navigation-bar-view';

  static const all = <String>{
    homeView,
    startupView,
    navigationBarView,
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
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i5.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i5.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.NavigationBarView: (data) {
      final args = data.getArgs<NavigationBarViewArguments>(nullOk: false);
      return _i5.MaterialPageRoute<dynamic>(
        builder: (context) => _i4.NavigationBarView(
            key: args.key,
            navBarItems: args.navBarItems,
            onItemChanged: args.onItemChanged),
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

  final _i5.Key? key;

  final List<_i6.NavBarData> navBarItems;

  final void Function(int) onItemChanged;

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

extension NavigatorStateExtension on _i7.NavigationService {
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
    _i5.Key? key,
    required List<_i6.NavBarData> navBarItems,
    required void Function(int) onItemChanged,
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
    _i5.Key? key,
    required List<_i6.NavBarData> navBarItems,
    required void Function(int) onItemChanged,
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
}
