import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bookmark/domain/bookmark/bookmark.dart';
import 'package:bookmark/domain/bookmark/bookmark_failure.dart';
import 'package:bookmark/domain/bookmark/i_bookmark_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../domain/bookmark/bookmark_failure.dart';

part 'bookmark_event.dart';
part 'bookmark_state.dart';
part 'bookmark_bloc.freezed.dart';

@injectable
class BookmarkBloc extends Bloc<BookmarkEvent, BookmarkState> {
  final IBookmarkRepository _bookmarkRepository;
  BookmarkBloc(this._bookmarkRepository) : super(_Initial());

  @override
  Stream<BookmarkState> mapEventToState(
    BookmarkEvent event,
  ) async* {
    yield* event.when(import: (_) async* {
      yield BookmarkState.loading();

      Either<BookmarkFailure, KtList<Bookmark>> result =
          await _bookmarkRepository.importBookmarks();

      yield result.fold((l) => BookmarkState.loadFailure(l),
          (r) => BookmarkState.loadSuccess(r));
    });
  }
}
