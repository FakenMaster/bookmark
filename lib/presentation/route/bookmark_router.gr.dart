// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:bookmark/presentation/page/home_page.dart';
import 'package:bookmark/presentation/page/webview_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String homePage = '/';
  static const String webviewPage = '/webview-page';
  static const all = <String>{
    homePage,
    webviewPage,
  };
}

class BookmarkRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.webviewPage, page: WebviewPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    WebviewPage: (data) {
      final args = data.getArgs<WebviewPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => WebviewPage(
          key: args.key,
          url: args.url,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension BookmarkRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushHomePage() => push<dynamic>(Routes.homePage);

  Future<dynamic> pushWebviewPage({
    Key key,
    @required String url,
  }) =>
      push<dynamic>(
        Routes.webviewPage,
        arguments: WebviewPageArguments(key: key, url: url),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// WebviewPage arguments holder class
class WebviewPageArguments {
  final Key key;
  final String url;
  WebviewPageArguments({this.key, @required this.url});
}
