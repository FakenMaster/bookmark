// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bookmark.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BookmarkTearOff {
  const _$BookmarkTearOff();

// ignore: unused_element
  _Bookmark call(
      {String name,
      String href,
      DateTime addDate,
      DateTime lastModified,
      String iconUri,
      String icon,
      List<String> tags,
      String shortcutUrl,
      bool isFolder,
      List<Bookmark> subBookmarks}) {
    return _Bookmark(
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
const $Bookmark = _$BookmarkTearOff();

mixin _$Bookmark {
  String get name;
  String get href;
  DateTime get addDate;
  DateTime get lastModified;
  String get iconUri;
  String get icon;
  List<String> get tags;
  String get shortcutUrl;
  bool get isFolder;
  List<Bookmark> get subBookmarks;

  $BookmarkCopyWith<Bookmark> get copyWith;
}

abstract class $BookmarkCopyWith<$Res> {
  factory $BookmarkCopyWith(Bookmark value, $Res Function(Bookmark) then) =
      _$BookmarkCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String href,
      DateTime addDate,
      DateTime lastModified,
      String iconUri,
      String icon,
      List<String> tags,
      String shortcutUrl,
      bool isFolder,
      List<Bookmark> subBookmarks});
}

class _$BookmarkCopyWithImpl<$Res> implements $BookmarkCopyWith<$Res> {
  _$BookmarkCopyWithImpl(this._value, this._then);

  final Bookmark _value;
  // ignore: unused_field
  final $Res Function(Bookmark) _then;

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
      tags: tags == freezed ? _value.tags : tags as List<String>,
      shortcutUrl:
          shortcutUrl == freezed ? _value.shortcutUrl : shortcutUrl as String,
      isFolder: isFolder == freezed ? _value.isFolder : isFolder as bool,
      subBookmarks: subBookmarks == freezed
          ? _value.subBookmarks
          : subBookmarks as List<Bookmark>,
    ));
  }
}

abstract class _$BookmarkCopyWith<$Res> implements $BookmarkCopyWith<$Res> {
  factory _$BookmarkCopyWith(_Bookmark value, $Res Function(_Bookmark) then) =
      __$BookmarkCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String href,
      DateTime addDate,
      DateTime lastModified,
      String iconUri,
      String icon,
      List<String> tags,
      String shortcutUrl,
      bool isFolder,
      List<Bookmark> subBookmarks});
}

class __$BookmarkCopyWithImpl<$Res> extends _$BookmarkCopyWithImpl<$Res>
    implements _$BookmarkCopyWith<$Res> {
  __$BookmarkCopyWithImpl(_Bookmark _value, $Res Function(_Bookmark) _then)
      : super(_value, (v) => _then(v as _Bookmark));

  @override
  _Bookmark get _value => super._value as _Bookmark;

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
    return _then(_Bookmark(
      name: name == freezed ? _value.name : name as String,
      href: href == freezed ? _value.href : href as String,
      addDate: addDate == freezed ? _value.addDate : addDate as DateTime,
      lastModified: lastModified == freezed
          ? _value.lastModified
          : lastModified as DateTime,
      iconUri: iconUri == freezed ? _value.iconUri : iconUri as String,
      icon: icon == freezed ? _value.icon : icon as String,
      tags: tags == freezed ? _value.tags : tags as List<String>,
      shortcutUrl:
          shortcutUrl == freezed ? _value.shortcutUrl : shortcutUrl as String,
      isFolder: isFolder == freezed ? _value.isFolder : isFolder as bool,
      subBookmarks: subBookmarks == freezed
          ? _value.subBookmarks
          : subBookmarks as List<Bookmark>,
    ));
  }
}

class _$_Bookmark extends _Bookmark {
  const _$_Bookmark(
      {this.name,
      this.href,
      this.addDate,
      this.lastModified,
      this.iconUri,
      this.icon,
      this.tags,
      this.shortcutUrl,
      this.isFolder,
      this.subBookmarks})
      : super._();

  @override
  final String name;
  @override
  final String href;
  @override
  final DateTime addDate;
  @override
  final DateTime lastModified;
  @override
  final String iconUri;
  @override
  final String icon;
  @override
  final List<String> tags;
  @override
  final String shortcutUrl;
  @override
  final bool isFolder;
  @override
  final List<Bookmark> subBookmarks;

  @override
  String toString() {
    return 'Bookmark(name: $name, href: $href, addDate: $addDate, lastModified: $lastModified, iconUri: $iconUri, icon: $icon, tags: $tags, shortcutUrl: $shortcutUrl, isFolder: $isFolder, subBookmarks: $subBookmarks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Bookmark &&
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
  _$BookmarkCopyWith<_Bookmark> get copyWith =>
      __$BookmarkCopyWithImpl<_Bookmark>(this, _$identity);
}

abstract class _Bookmark extends Bookmark {
  const _Bookmark._() : super._();
  const factory _Bookmark(
      {String name,
      String href,
      DateTime addDate,
      DateTime lastModified,
      String iconUri,
      String icon,
      List<String> tags,
      String shortcutUrl,
      bool isFolder,
      List<Bookmark> subBookmarks}) = _$_Bookmark;

  @override
  String get name;
  @override
  String get href;
  @override
  DateTime get addDate;
  @override
  DateTime get lastModified;
  @override
  String get iconUri;
  @override
  String get icon;
  @override
  List<String> get tags;
  @override
  String get shortcutUrl;
  @override
  bool get isFolder;
  @override
  List<Bookmark> get subBookmarks;
  @override
  _$BookmarkCopyWith<_Bookmark> get copyWith;
}
