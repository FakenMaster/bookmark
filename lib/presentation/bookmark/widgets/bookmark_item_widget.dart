import 'package:bookmark/domain/bookmark/bookmark.dart';
import 'package:bookmark/presentation/widget/base64_image_widget.dart';
import 'package:bookmark/infrastructure/util/data_extension.dart';
import 'package:flutter/material.dart';

class BookmarkItemWidget extends StatelessWidget {
  final Bookmark bookmark;

  const BookmarkItemWidget({Key key, this.bookmark}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Base64ImageWidget(
        dataSource: bookmark.icon,
      ),
      title: Text(bookmark.name),
      // subtitle: Text(bookmark.href),
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          onTap: () {
            bookmark.href.navigate2WebviewOrLaunchUrl(context);
          },
          leading: Text(''),
          title: Text(bookmark.href),
          subtitle: Wrap(
            spacing: 8.0,
            children: bookmark.tags
                .map((e) => ActionChip(
                      label: Text(e),
                      onPressed: () {},
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
