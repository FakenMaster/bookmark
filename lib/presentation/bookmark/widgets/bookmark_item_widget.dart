import 'package:bookmark/domain/bookmark/bookmark.dart';
import 'package:bookmark/presentation/widget/base64_image_widget.dart';
import 'package:flutter/material.dart';

class BookmarkItemWidget extends StatelessWidget {
  final Bookmark bookmark;

  const BookmarkItemWidget({Key key, this.bookmark}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Base64ImageWidget(
        dataSource: bookmark.icon,
      ),
      title: Text(bookmark.name),
      subtitle: Text(bookmark.href),
    );
  }
}
