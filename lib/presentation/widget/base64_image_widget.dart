import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bookmark/infrastructure/util/data_extension.dart';

class Base64ImageWidget extends StatelessWidget {
  final String dataSource;
  final double width;
  final double height;
  const Base64ImageWidget({
    Key key,
    @required this.dataSource,
    double width,
    double height,
  })  : width = width ?? 25,
        height = height ?? 25,
        super(key: key);
  @override
  Widget build(BuildContext context) {
    if (dataSource == null) {
      return Container(
        width: width,
        height: height,
      );
    }
    final data = dataSource.base64ToUint8List();
    bool isSvg = dataSource.base64ToUtf8()?.startsWith("<svg") ?? false;
    return isSvg
        ? SvgPicture.memory(
            data,
            width: width,
            height: height,
          )
        : Image.memory(
            data,
            width: width,
            height: height,
          );
  }
}
