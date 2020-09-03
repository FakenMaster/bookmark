// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'theme_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ThemeStateTearOff {
  const _$ThemeStateTearOff();

// ignore: unused_element
  _Brightness brightness(bool isDark) {
    return _Brightness(
      isDark,
    );
  }
}

// ignore: unused_element
const $ThemeState = _$ThemeStateTearOff();

mixin _$ThemeState {
  bool get isDark;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result brightness(bool isDark),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result brightness(bool isDark),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result brightness(_Brightness value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result brightness(_Brightness value),
    @required Result orElse(),
  });

  $ThemeStateCopyWith<ThemeState> get copyWith;
}

abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res>;
  $Res call({bool isDark});
}

class _$ThemeStateCopyWithImpl<$Res> implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  final ThemeState _value;
  // ignore: unused_field
  final $Res Function(ThemeState) _then;

  @override
  $Res call({
    Object isDark = freezed,
  }) {
    return _then(_value.copyWith(
      isDark: isDark == freezed ? _value.isDark : isDark as bool,
    ));
  }
}

abstract class _$BrightnessCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$BrightnessCopyWith(
          _Brightness value, $Res Function(_Brightness) then) =
      __$BrightnessCopyWithImpl<$Res>;
  @override
  $Res call({bool isDark});
}

class __$BrightnessCopyWithImpl<$Res> extends _$ThemeStateCopyWithImpl<$Res>
    implements _$BrightnessCopyWith<$Res> {
  __$BrightnessCopyWithImpl(
      _Brightness _value, $Res Function(_Brightness) _then)
      : super(_value, (v) => _then(v as _Brightness));

  @override
  _Brightness get _value => super._value as _Brightness;

  @override
  $Res call({
    Object isDark = freezed,
  }) {
    return _then(_Brightness(
      isDark == freezed ? _value.isDark : isDark as bool,
    ));
  }
}

class _$_Brightness implements _Brightness {
  const _$_Brightness(this.isDark) : assert(isDark != null);

  @override
  final bool isDark;

  @override
  String toString() {
    return 'ThemeState.brightness(isDark: $isDark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Brightness &&
            (identical(other.isDark, isDark) ||
                const DeepCollectionEquality().equals(other.isDark, isDark)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isDark);

  @override
  _$BrightnessCopyWith<_Brightness> get copyWith =>
      __$BrightnessCopyWithImpl<_Brightness>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result brightness(bool isDark),
  }) {
    assert(brightness != null);
    return brightness(isDark);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result brightness(bool isDark),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (brightness != null) {
      return brightness(isDark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result brightness(_Brightness value),
  }) {
    assert(brightness != null);
    return brightness(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result brightness(_Brightness value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (brightness != null) {
      return brightness(this);
    }
    return orElse();
  }
}

abstract class _Brightness implements ThemeState {
  const factory _Brightness(bool isDark) = _$_Brightness;

  @override
  bool get isDark;
  @override
  _$BrightnessCopyWith<_Brightness> get copyWith;
}
