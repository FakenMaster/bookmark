import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'presentation/route/bookmark_router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bookmark',
      builder: ExtendedNavigator.builder<BookmarkRouter>(
        router: BookmarkRouter(),
        builder: (context, extendedNav) => Theme(
          data: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          child: extendedNav,
        ),
      ),
    );
  }
}
