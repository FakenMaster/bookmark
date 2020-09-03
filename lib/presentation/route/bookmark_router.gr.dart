// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:bookmark/domain/bookmark/bookmark.dart';
import 'package:bookmark/presentation/bookmark/bookmark_overview_page.dart';
import 'package:bookmark/presentation/floating_macondo/floating_macondo_page.dart';
import 'package:bookmark/presentation/home/home_page.dart';
import 'package:bookmark/presentation/webview/webview_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String homePage = '/';
  static const String webviewPage = '/webview-page';
  static const String bookmarkOverviewPage = '/bookmark-overview-page';
  static const String floatingMacondoPage = '/floating-macondo-page';
  static const all = <String>{
    homePage,
    webviewPage,
    bookmarkOverviewPage,
    floatingMacondoPage,
  };
}

class BookmarkRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.webviewPage, page: WebviewPage),
    RouteDef(Routes.bookmarkOverviewPage, page: BookmarkOverviewPage),
    RouteDef(Routes.floatingMacondoPage, page: FloatingMacondoPage),
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
    BookmarkOverviewPage: (data) {
      final args = data.getArgs<BookmarkOverviewPageArguments>(
        orElse: () => BookmarkOverviewPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => BookmarkOverviewPage(
          key: args.key,
          bookmarks: args.bookmarks,
        ),
        settings: data,
      );
    },
    FloatingMacondoPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => FloatingMacondoPage(),
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

  Future<dynamic> pushBookmarkOverviewPage({
    Key key,
    List<Bookmark> bookmarks,
  }) =>
      push<dynamic>(
        Routes.bookmarkOverviewPage,
        arguments:
            BookmarkOverviewPageArguments(key: key, bookmarks: bookmarks),
      );

  Future<dynamic> pushFloatingMacondoPage() =>
      push<dynamic>(Routes.floatingMacondoPage);
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

/// BookmarkOverviewPage arguments holder class
class BookmarkOverviewPageArguments {
  final Key key;
  final List<Bookmark> bookmarks;
  BookmarkOverviewPageArguments({this.key, this.bookmarks});
}
