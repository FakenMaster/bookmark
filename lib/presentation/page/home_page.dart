import 'package:auto_route/auto_route.dart';
import 'package:bookmark/presentation/route/bookmark_router.gr.dart';
import 'package:bookmark/presentation/widget/base64_image_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: RaisedButton(
          child: Icon(Icons.import_contacts),
          onPressed: () => ExtendedNavigator.of(context).push(Routes.bookmarkOverviewPage),
        ),
      ),
    );
  }
}
