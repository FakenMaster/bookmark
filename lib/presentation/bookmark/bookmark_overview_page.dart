import 'package:bookmark/application/bookmark/bookmark_bloc.dart';
import 'package:bookmark/domain/bookmark/bookmark.dart';
import 'package:bookmark/injection.dart';
import 'package:bookmark/presentation/bookmark/widgets/bookmark_overview_body_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookmarkOverviewPage extends StatelessWidget {
  final List<Bookmark> bookmarks;

  const BookmarkOverviewPage({Key key, List<Bookmark> bookmarks})
      : bookmarks = bookmarks ?? const [],
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<BookmarkBloc>()
            ..add(
              BookmarkEvent.import(),
            ),
        )
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('书签总览'),
        ),
        body: BookmarkOverviewBodyWidget(),
      ),
    );
  }
}
