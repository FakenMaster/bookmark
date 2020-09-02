part of 'bookmark_bloc.dart';

@freezed
abstract class BookmarkState with _$BookmarkState {
  const factory BookmarkState.initial() = _Initial;
  const factory BookmarkState.loading() = _Loading;
  const factory BookmarkState.loadSuccess(KtList<Bookmark> bookmarks) =
      _LoadSuccess;
  const factory BookmarkState.loadFailure(BookmarkFailure failure) =
      _LoadFailure;
}
