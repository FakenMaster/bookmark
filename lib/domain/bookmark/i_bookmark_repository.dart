import 'package:bookmark/domain/bookmark/bookmark_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'dart:async';

import 'bookmark.dart';

abstract class IBookmarkRepository {
  Future<Either<BookmarkFailure, KtList<Bookmark>>> importBookmarks({String path});
}
