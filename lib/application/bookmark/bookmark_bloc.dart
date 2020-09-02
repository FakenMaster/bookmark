import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bookmark/domain/bookmark/bookmark.dart';
import 'package:bookmark/domain/bookmark/bookmark_failure.dart';
import 'package:bookmark/domain/bookmark/i_bookmark_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

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

      Either<NoteFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.note.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _noteRepository.update(state.note)
              :await _noteRepository.create(state.note);
        }

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
    });
  }
}
