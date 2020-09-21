import 'dart:convert';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:bookmark/presentation/route/bookmark_router.gr.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

extension PrefixX<T> on T {
  String toStringWithPrefix(String prefix, {bool returnPrefixIfNull = false}) {
    if (this == null) {
      if (returnPrefixIfNull) {
        return prefix;
      }
      return null;
    }

    return "$prefix$this";
  }
}

extension StringX on String {
  Uint8List base64ToUint8List() {
    return base64Decode(this);
  }

  /// return null means base64 can't decode to utf8.
  String base64ToUtf8() {
    try {
      return utf8.decode(this.base64ToUint8List());
    } catch (e) {
      return null;
    }
  }

  bool isNullOrEmpty() {
    return this == null || this.isEmpty;
  }

  Future<bool> navigate2WebviewOrLaunchUrl(BuildContext context) async {
    if (Platform.isAndroid || Platform.isIOS) {
      ExtendedNavigator.of(context)
          .push(Routes.webviewPage, arguments: WebviewPageArguments(url: this));
      return true;
    }

    return launchUrl();
  }

  Future<bool> launchUrl() async {
    if (await canLaunch(this)) {
      launch(this);
      return true;
    }
    return false;
  }
}

extension ListX<T> on List<T> {
  bool get isNullOrEmpty => this == null || this.isEmpty;
  bool get hasData => !this.isNullOrEmpty;
}
