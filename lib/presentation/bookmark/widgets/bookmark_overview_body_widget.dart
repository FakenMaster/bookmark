import 'package:bookmark/application/bookmark/bookmark_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            final bookmarks = state.bookmarks;
            return ListView.builder(
              itemBuilder: (context, index) {
                return BookmarkItemWidget(
                  bookmark: bookmarks[index],
                );
              },
              itemCount: bookmarks.size,
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
