import 'package:auto_route/auto_route.dart';
import 'package:bookmark/presentation/route/bookmark_router.gr.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RaisedButton(
              child: Icon(Icons.import_contacts),
              onPressed: () {
                print('Bookmark');
                return ExtendedNavigator.of(context)
                    .push(Routes.bookmarkOverviewPage);
              },
            ),
            RaisedButton(
              child: Icon(Icons.change_history),
              onPressed: () {
                print('主题色更改');
                return ExtendedNavigator.of(context)
                    .push(Routes.floatingMacondoPage);
              },
            ),
          ],
        ),
      ),
    );
  }
}
