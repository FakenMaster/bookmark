import 'package:auto_route/auto_route.dart';
import 'package:bookmark/presentation/route/bookmark_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_html/flutter_html.dart';

/// local html content preview
class LocalHtmlWidget extends HookWidget {
  final String content;

  const LocalHtmlWidget({
    Key key,
    @required this.content,
  })  : assert(content != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    return Scrollbar(
      controller: scrollController,
      isAlwaysShown: true,
      child: SingleChildScrollView(
        controller: scrollController,
        child: Html(
          data: content,
          onLinkTap: (url) {
            ExtendedNavigator.of(context).push(Routes.webviewPage,
                arguments: WebviewPageArguments(url: url));
          },
        ),
      ),
    );
  }
}
