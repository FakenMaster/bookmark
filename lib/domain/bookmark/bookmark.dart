import 'package:freezed_annotation/freezed_annotation.dart';
part 'bookmark.freezed.dart';

@freezed
abstract class Bookmark implements _$Bookmark {
  const Bookmark._();
  const factory Bookmark({
    String id,
    String name,
    String href,
    DateTime addDate,
    DateTime lastModified,
    String iconUri,
    String icon,
    List<String> tags,
    String shortcutUrl,
    bool isFolder,
    List<Bookmark> subBookmarks,
  }) = _Bookmark;
}
