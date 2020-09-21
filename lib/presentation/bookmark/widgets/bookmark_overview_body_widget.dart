import 'package:bookmark/application/bookmark/bookmark_bloc.dart';
import 'package:bookmark/domain/bookmark/bookmark.dart';
import 'package:bookmark/presentation/bookmark/widgets/bookmark_tree_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:tree_view/tree_view.dart';

import 'bookmark_item_widget.dart';

class BookmarkOverviewBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookmarkBloc, BookmarkState>(builder: (context, state) {
      return state.map(
          initial: (_) => Container(),
          loading: (_) => Center(
                child: CircularProgressIndicator(),
              ),
          loadSuccess: (state) {
            return _BookmarkListWidget(
              bookmarks: state.bookmarks,
            );
          },
          loadFailure: (_) {
            return Center(
              child: Text("Loading Error!"),
            );
          });
    });
  }
}

class _BookmarkListWidget extends StatefulWidget {
  final KtList<Bookmark> bookmarks;

  const _BookmarkListWidget({Key key, this.bookmarks}) : super(key: key);

  @override
  _BookmarkListWidgetState createState() => _BookmarkListWidgetState();
}

class _BookmarkListWidgetState extends State<_BookmarkListWidget> {
  List<Bookmark> bookmarks;
  ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    bookmarks = List.from(widget.bookmarks.asList());
    _scrollController = ScrollController();
  }

  Widget generateWidget(Bookmark bookmark) {
    var widget;
    if (bookmark.subBookmarks != null) {
      widget = Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Parent(
          parent: BookmarkItemWidget(
            bookmark: bookmark,
          ),
          childList: ChildList(
            children: bookmark.subBookmarks.map(generateWidget).toList(),
          ),
        ),
      );
    } else {
      widget = Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: BookmarkItemWidget(
          bookmark: bookmark,
        ),
      );
    }
    return widget;
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: _scrollController,
      child: ListView.builder(
        controller: _scrollController,
        itemBuilder: (context, index) {
          return BookmarkItemWidget(
            key: ValueKey(bookmarks[index].id),
            bookmark: bookmarks[index],
          );
        },
        itemCount: bookmarks.length,
      ),
    );
    return ReorderableListView(
        children: List.generate(
          bookmarks.length,
          (index) => BookmarkItemWidget(
            key: ValueKey(bookmarks[index].id),
            bookmark: bookmarks[index],
          ),
        ),
        onReorder: (int oldIndex, int newIndex) {
          print("old:$oldIndex,new:$newIndex");
          setState(
            () {
              if (newIndex > oldIndex) {
                newIndex -= 1;
              }
              final Bookmark item = bookmarks.removeAt(oldIndex);
              bookmarks.insert(newIndex, item);
            },
          );
        });
  }
}
