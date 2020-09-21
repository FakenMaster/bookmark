// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bookmark_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BookmarkDto _$BookmarkDtoFromJson(Map<String, dynamic> json) {
  return _BookmarkDto.fromJson(json);
}

class _$BookmarkDtoTearOff {
  const _$BookmarkDtoTearOff();

// ignore: unused_element
  _BookmarkDto call(
      {String name,
      String href,
      @JsonKey(name: 'add_date')
      @TimestampConverter()
          DateTime addDate,
      @JsonKey(name: 'last_modified')
      @TimestampConverter()
          DateTime lastModified,
      @JsonKey(name: 'icon_uri')
          String iconUri,
      String icon,
      String tags,
      @JsonKey(name: 'shortcuturl')
          String shortcutUrl,
      @JsonKey(ignore: true)
          bool isFolder,
      @JsonKey(ignore: false)
          List<BookmarkDto> subBookmarks}) {
    return _BookmarkDto(
      name: name,
      href: href,
      addDate: addDate,
      lastModified: lastModified,
      iconUri: iconUri,
      icon: icon,
      tags: tags,
      shortcutUrl: shortcutUrl,
      isFolder: isFolder,
      subBookmarks: subBookmarks,
    );
  }
}

// ignore: unused_element
const $BookmarkDto = _$BookmarkDtoTearOff();

mixin _$BookmarkDto {
  String get name;
  String get href;
  @JsonKey(name: 'add_date')
  @TimestampConverter()
  DateTime get addDate;
  @JsonKey(name: 'last_modified')
  @TimestampConverter()
  DateTime get lastModified;
  @JsonKey(name: 'icon_uri')
  String get iconUri;
  String get icon;
  String get tags;
  @JsonKey(name: 'shortcuturl')
  String get shortcutUrl;
  @JsonKey(ignore: true)
  bool get isFolder;
  @JsonKey(ignore: false)
  List<BookmarkDto> get subBookmarks;

  Map<String, dynamic> toJson();
  $BookmarkDtoCopyWith<BookmarkDto> get copyWith;
}

abstract class $BookmarkDtoCopyWith<$Res> {
  factory $BookmarkDtoCopyWith(
          BookmarkDto value, $Res Function(BookmarkDto) then) =
      _$BookmarkDtoCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String href,
      @JsonKey(name: 'add_date')
      @TimestampConverter()
          DateTime addDate,
      @JsonKey(name: 'last_modified')
      @TimestampConverter()
          DateTime lastModified,
      @JsonKey(name: 'icon_uri')
          String iconUri,
      String icon,
      String tags,
      @JsonKey(name: 'shortcuturl')
          String shortcutUrl,
      @JsonKey(ignore: true)
          bool isFolder,
      @JsonKey(ignore: false)
          List<BookmarkDto> subBookmarks});
}

class _$BookmarkDtoCopyWithImpl<$Res> implements $BookmarkDtoCopyWith<$Res> {
  _$BookmarkDtoCopyWithImpl(this._value, this._then);

  final BookmarkDto _value;
  // ignore: unused_field
  final $Res Function(BookmarkDto) _then;

  @override
  $Res call({
    Object name = freezed,
    Object href = freezed,
    Object addDate = freezed,
    Object lastModified = freezed,
    Object iconUri = freezed,
    Object icon = freezed,
    Object tags = freezed,
    Object shortcutUrl = freezed,
    Object isFolder = freezed,
    Object subBookmarks = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      href: href == freezed ? _value.href : href as String,
      addDate: addDate == freezed ? _value.addDate : addDate as DateTime,
      lastModified: lastModified == freezed
          ? _value.lastModified
          : lastModified as DateTime,
      iconUri: iconUri == freezed ? _value.iconUri : iconUri as String,
      icon: icon == freezed ? _value.icon : icon as String,
      tags: tags == freezed ? _value.tags : tags as String,
      shortcutUrl:
          shortcutUrl == freezed ? _value.shortcutUrl : shortcutUrl as String,
      isFolder: isFolder == freezed ? _value.isFolder : isFolder as bool,
      subBookmarks: subBookmarks == freezed
          ? _value.subBookmarks
          : subBookmarks as List<BookmarkDto>,
    ));
  }
}

abstract class _$BookmarkDtoCopyWith<$Res>
    implements $BookmarkDtoCopyWith<$Res> {
  factory _$BookmarkDtoCopyWith(
          _BookmarkDto value, $Res Function(_BookmarkDto) then) =
      __$BookmarkDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String href,
      @JsonKey(name: 'add_date')
      @TimestampConverter()
          DateTime addDate,
      @JsonKey(name: 'last_modified')
      @TimestampConverter()
          DateTime lastModified,
      @JsonKey(name: 'icon_uri')
          String iconUri,
      String icon,
      String tags,
      @JsonKey(name: 'shortcuturl')
          String shortcutUrl,
      @JsonKey(ignore: true)
          bool isFolder,
      @JsonKey(ignore: false)
          List<BookmarkDto> subBookmarks});
}

class __$BookmarkDtoCopyWithImpl<$Res> extends _$BookmarkDtoCopyWithImpl<$Res>
    implements _$BookmarkDtoCopyWith<$Res> {
  __$BookmarkDtoCopyWithImpl(
      _BookmarkDto _value, $Res Function(_BookmarkDto) _then)
      : super(_value, (v) => _then(v as _BookmarkDto));

  @override
  _BookmarkDto get _value => super._value as _BookmarkDto;

  @override
  $Res call({
    Object name = freezed,
    Object href = freezed,
    Object addDate = freezed,
    Object lastModified = freezed,
    Object iconUri = freezed,
    Object icon = freezed,
    Object tags = freezed,
    Object shortcutUrl = freezed,
    Object isFolder = freezed,
    Object subBookmarks = freezed,
  }) {
    return _then(_BookmarkDto(
      name: name == freezed ? _value.name : name as String,
      href: href == freezed ? _value.href : href as String,
      addDate: addDate == freezed ? _value.addDate : addDate as DateTime,
      lastModified: lastModified == freezed
          ? _value.lastModified
          : lastModified as DateTime,
      iconUri: iconUri == freezed ? _value.iconUri : iconUri as String,
      icon: icon == freezed ? _value.icon : icon as String,
      tags: tags == freezed ? _value.tags : tags as String,
      shortcutUrl:
          shortcutUrl == freezed ? _value.shortcutUrl : shortcutUrl as String,
      isFolder: isFolder == freezed ? _value.isFolder : isFolder as bool,
      subBookmarks: subBookmarks == freezed
          ? _value.subBookmarks
          : subBookmarks as List<BookmarkDto>,
    ));
  }
}

@JsonSerializable()
class _$_BookmarkDto extends _BookmarkDto {
  const _$_BookmarkDto(
      {this.name,
      this.href,
      @JsonKey(name: 'add_date') @TimestampConverter() this.addDate,
      @JsonKey(name: 'last_modified') @TimestampConverter() this.lastModified,
      @JsonKey(name: 'icon_uri') this.iconUri,
      this.icon,
      this.tags,
      @JsonKey(name: 'shortcuturl') this.shortcutUrl,
      @JsonKey(ignore: true) this.isFolder,
      @JsonKey(ignore: false) this.subBookmarks})
      : super._();

  factory _$_BookmarkDto.fromJson(Map<String, dynamic> json) =>
      _$_$_BookmarkDtoFromJson(json);

  @override
  final String name;
  @override
  final String href;
  @override
  @JsonKey(name: 'add_date')
  @TimestampConverter()
  final DateTime addDate;
  @override
  @JsonKey(name: 'last_modified')
  @TimestampConverter()
  final DateTime lastModified;
  @override
  @JsonKey(name: 'icon_uri')
  final String iconUri;
  @override
  final String icon;
  @override
  final String tags;
  @override
  @JsonKey(name: 'shortcuturl')
  final String shortcutUrl;
  @override
  @JsonKey(ignore: true)
  final bool isFolder;
  @override
  @JsonKey(ignore: false)
  final List<BookmarkDto> subBookmarks;

  @override
  String toString() {
    return 'BookmarkDto(name: $name, href: $href, addDate: $addDate, lastModified: $lastModified, iconUri: $iconUri, icon: $icon, tags: $tags, shortcutUrl: $shortcutUrl, isFolder: $isFolder, subBookmarks: $subBookmarks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookmarkDto &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.href, href) ||
                const DeepCollectionEquality().equals(other.href, href)) &&
            (identical(other.addDate, addDate) ||
                const DeepCollectionEquality()
                    .equals(other.addDate, addDate)) &&
            (identical(other.lastModified, lastModified) ||
                const DeepCollectionEquality()
                    .equals(other.lastModified, lastModified)) &&
            (identical(other.iconUri, iconUri) ||
                const DeepCollectionEquality()
                    .equals(other.iconUri, iconUri)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.shortcutUrl, shortcutUrl) ||
                const DeepCollectionEquality()
                    .equals(other.shortcutUrl, shortcutUrl)) &&
            (identical(other.isFolder, isFolder) ||
                const DeepCollectionEquality()
                    .equals(other.isFolder, isFolder)) &&
            (identical(other.subBookmarks, subBookmarks) ||
                const DeepCollectionEquality()
                    .equals(other.subBookmarks, subBookmarks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(href) ^
      const DeepCollectionEquality().hash(addDate) ^
      const DeepCollectionEquality().hash(lastModified) ^
      const DeepCollectionEquality().hash(iconUri) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(shortcutUrl) ^
      const DeepCollectionEquality().hash(isFolder) ^
      const DeepCollectionEquality().hash(subBookmarks);

  @override
  _$BookmarkDtoCopyWith<_BookmarkDto> get copyWith =>
      __$BookmarkDtoCopyWithImpl<_BookmarkDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BookmarkDtoToJson(this);
  }
}

abstract class _BookmarkDto extends BookmarkDto {
  const _BookmarkDto._() : super._();
  const factory _BookmarkDto(
      {String name,
      String href,
      @JsonKey(name: 'add_date')
      @TimestampConverter()
          DateTime addDate,
      @JsonKey(name: 'last_modified')
      @TimestampConverter()
          DateTime lastModified,
      @JsonKey(name: 'icon_uri')
          String iconUri,
      String icon,
      String tags,
      @JsonKey(name: 'shortcuturl')
          String shortcutUrl,
      @JsonKey(ignore: true)
          bool isFolder,
      @JsonKey(ignore: false)
          List<BookmarkDto> subBookmarks}) = _$_BookmarkDto;

  factory _BookmarkDto.fromJson(Map<String, dynamic> json) =
      _$_BookmarkDto.fromJson;

  @override
  String get name;
  @override
  String get href;
  @override
  @JsonKey(name: 'add_date')
  @TimestampConverter()
  DateTime get addDate;
  @override
  @JsonKey(name: 'last_modified')
  @TimestampConverter()
  DateTime get lastModified;
  @override
  @JsonKey(name: 'icon_uri')
  String get iconUri;
  @override
  String get icon;
  @override
  String get tags;
  @override
  @JsonKey(name: 'shortcuturl')
  String get shortcutUrl;
  @override
  @JsonKey(ignore: true)
  bool get isFolder;
  @override
  @JsonKey(ignore: false)
  List<BookmarkDto> get subBookmarks;
  @override
  _$BookmarkDtoCopyWith<_BookmarkDto> get copyWith;
}
