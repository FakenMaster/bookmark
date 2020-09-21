import 'package:bookmark/domain/bookmark/bookmark.dart';
import 'package:flutter/material.dart';
import 'package:flutter_treeview/tree_view.dart';

class BookmarkTreeView extends StatefulWidget {
  final List<Bookmark> bookmarks;

  const BookmarkTreeView({Key key, this.bookmarks}) : super(key: key);

  @override
  _BookmarkTreeViewState createState() => _BookmarkTreeViewState();
}

class _BookmarkTreeViewState extends State<BookmarkTreeView> {
  TreeViewController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TreeViewController(
        children: widget.bookmarks.map(generateNode).toList());
  }

  Node<Bookmark> generateNode(Bookmark bookmark) {
    List<Node<Bookmark>> children =
        bookmark.subBookmarks?.map(generateNode)?.toList();
    return Node<Bookmark>(
        label: bookmark.name ?? bookmark.id,
        key: bookmark.id,
        data: bookmark,
        children: children,
        icon: children != null
            ? NodeIcon(codePoint: Icons.folder.codePoint)
            : NodeIcon.fromString(bookmark.icon));
  }

  @override
  Widget build(BuildContext context) {
    return TreeView(
      controller: _controller,
    );
  }
}
