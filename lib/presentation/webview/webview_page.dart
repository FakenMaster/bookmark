import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewPage extends HookWidget {
  final String url;

  const WebviewPage({Key key, @required this.url})
      : assert(url != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    final streamController = useStreamController<bool>();
    return Scaffold(
      appBar: AppBar(
        title: Text(url),
      ),
      body: Column(
        children: [
          StreamBuilder<Object>(
              stream: streamController.stream,
              builder: (context, snapshot) {
                return snapshot.data == true
                    ? Container()
                    : LinearProgressIndicator();
              }),
          Expanded(
            child: WebView(
              initialUrl: url,
              javascriptMode: JavascriptMode.unrestricted,
              // onPageStarted: (url) {
              //   streamController.add(true);
              // },
              onPageFinished: (url) {
                streamController.add(true);
              },
              gestureNavigationEnabled: true,
              
            ),
          ),
        ],
      ),
    );
  }
}
