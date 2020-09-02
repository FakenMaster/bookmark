import 'package:auto_route/auto_route_annotations.dart';
import 'package:bookmark/presentation/bookmark/bookmark_overview_page.dart';
import 'package:bookmark/presentation/page/home_page.dart';
import 'package:bookmark/presentation/page/webview_page.dart';

@MaterialAutoRouter(
  preferRelativeImports: false,
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(
      page: HomePage,
      initial: true,
    ),
    MaterialRoute(
      page: WebviewPage,
    ),
    MaterialRoute(
      page: BookmarkOverviewPage,
    ),
  ],
)
class $BookmarkRouter {}
