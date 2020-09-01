import 'dart:convert';

import 'package:flutter/material.dart';

class Base64ImageWidget extends StatelessWidget {
  final String dataSource;

  const Base64ImageWidget({Key key, @required this.dataSource})
      : assert(dataSource != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.memory(
      base64Decode(dataSource),
    );
  }
}
