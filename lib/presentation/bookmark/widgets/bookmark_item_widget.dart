import 'package:bookmark/domain/bookmark/bookmark.dart';
import 'package:bookmark/presentation/widget/base64_image_widget.dart';
import 'package:bookmark/infrastructure/util/data_extension.dart';
import 'package:flutter/material.dart';

class BookmarkItemWidget extends StatelessWidget {
  final Bookmark bookmark;
  final bool topBookmark;
  const BookmarkItemWidget({Key key, this.bookmark, this.topBookmark = true})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: topBookmark ? 0 : 8),
      child: bookmark.subBookmarks != null
          ? ExpansionTile(
              leading: Icon(Icons.folder),
              title: Text(bookmark.name),
              children: bookmark.subBookmarks
                  .map((e) => BookmarkItemWidget(
                        bookmark: e,
                        topBookmark: false,
                      ))
                  .toList(),
            )
          : ListTile(
              leading: Base64ImageWidget(
                dataSource: bookmark.icon,
              ),
              title: Text(bookmark.name),
              subtitle: Visibility(
                visible: bookmark.tags.hasData,
                child: Wrap(
                  spacing: 8.0,
                  children: bookmark.tags
                      .map((e) => ActionChip(
                            label: Text(e),
                            onPressed: () {},
                          ))
                      .toList(),
                ),
              ),
              onTap: () => bookmark.href?.navigate2WebviewOrLaunchUrl(context),
            ),
    );
  }
}
