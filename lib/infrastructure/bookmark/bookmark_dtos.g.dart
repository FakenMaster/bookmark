// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookmarkDto _$_$_BookmarkDtoFromJson(Map<String, dynamic> json) {
  return _$_BookmarkDto(
    name: json['name'] as String,
    href: json['href'] as String,
    addDate: const TimestampConverter().fromJson(json['add_date'] as String),
    lastModified:
        const TimestampConverter().fromJson(json['last_modified'] as String),
    iconUri: json['icon_uri'] as String,
    icon: json['icon'] as String,
    tags: json['tags'] as String,
    shortcutUrl: json['shortcuturl'] as String,
    subBookmarks: (json['subBookmarks'] as List)
        ?.map((e) =>
            e == null ? null : BookmarkDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_BookmarkDtoToJson(_$_BookmarkDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'href': instance.href,
      'add_date': const TimestampConverter().toJson(instance.addDate),
      'last_modified': const TimestampConverter().toJson(instance.lastModified),
      'icon_uri': instance.iconUri,
      'icon': instance.icon,
      'tags': instance.tags,
      'shortcuturl': instance.shortcutUrl,
      'subBookmarks': instance.subBookmarks?.map((e) => e?.toJson())?.toList(),
    };
