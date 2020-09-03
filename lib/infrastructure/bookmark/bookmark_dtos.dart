import 'package:bookmark/domain/bookmark/bookmark.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bookmark/infrastructure/util/data_extension.dart';
part 'bookmark_dtos.freezed.dart';
part 'bookmark_dtos.g.dart';

@freezed
abstract class BookmarkDto implements _$BookmarkDto {
  static final String ICON_PREFIX = "data:image/png;base64,";

  const BookmarkDto._();

  const factory BookmarkDto({
    @required String name,
    @required String href,
    @JsonKey(name: "add_date") @TimestampConverter() DateTime addDate,
    @JsonKey(name: "last_modified") @TimestampConverter() DateTime lastModified,
    @JsonKey(name: "icon_uri") String iconUri,
    String icon,
    String tags,
    @JsonKey(name: "shortcuturl") String shortcutUrl,
    @JsonKey(ignore: true) bool isFolder,
    @JsonKey(ignore: false) List<BookmarkDto> subBookmarks,
  }) = _BookmarkDto;

  factory BookmarkDto.fromJson(Map<String, dynamic> json) =>
      _$BookmarkDtoFromJson(json);

  factory BookmarkDto.fromDomain(Bookmark bookmark) {
    return BookmarkDto(
      name: bookmark.name,
      href: bookmark.href,
      addDate: bookmark.addDate,
      lastModified: bookmark.lastModified,
      iconUri: bookmark.iconUri,
      icon: bookmark.icon.toStringWithPrefix(ICON_PREFIX),
      tags: bookmark.tags?.join(','),
      shortcutUrl: bookmark.shortcutUrl,
      isFolder: bookmark.isFolder,
      subBookmarks: bookmark.subBookmarks
          ?.map((e) => BookmarkDto.fromDomain(e))
          ?.toList(),
    );
  }

  Bookmark toDomain() {
    return Bookmark(
      name: name,
      href: href,
      addDate: addDate,
      lastModified: lastModified,
      iconUri: iconUri,
      icon: icon?.replaceFirst(ICON_PREFIX, ""),
      tags: tags?.split(",")??[],
      shortcutUrl: shortcutUrl,
      isFolder: isFolder,
      subBookmarks: subBookmarks?.map((e) => e.toDomain())?.toList(),
    );
  }
}

class TimestampConverter implements JsonConverter<DateTime, String> {
  const TimestampConverter();
  @override
  DateTime fromJson(String json) {
    if (json.isNullOrEmpty()) {
      return null;
    }

    return DateTime.fromMicrosecondsSinceEpoch(int.tryParse(json ?? '0') ?? 0)
        .toLocal();
  }

  @override
  String toJson(DateTime object) {
    return object.microsecondsSinceEpoch.toString();
  }
}
