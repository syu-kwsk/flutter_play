// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tweet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TweetTearOff {
  const _$TweetTearOff();

// ignore: unused_element
  TweetData call({String name, String text}) {
    return TweetData(
      name: name,
      text: text,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Tweet = _$TweetTearOff();

/// @nodoc
mixin _$Tweet {
  String get name;
  String get text;

  $TweetCopyWith<Tweet> get copyWith;
}

/// @nodoc
abstract class $TweetCopyWith<$Res> {
  factory $TweetCopyWith(Tweet value, $Res Function(Tweet) then) =
      _$TweetCopyWithImpl<$Res>;
  $Res call({String name, String text});
}

/// @nodoc
class _$TweetCopyWithImpl<$Res> implements $TweetCopyWith<$Res> {
  _$TweetCopyWithImpl(this._value, this._then);

  final Tweet _value;
  // ignore: unused_field
  final $Res Function(Tweet) _then;

  @override
  $Res call({
    Object name = freezed,
    Object text = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

/// @nodoc
abstract class $TweetDataCopyWith<$Res> implements $TweetCopyWith<$Res> {
  factory $TweetDataCopyWith(TweetData value, $Res Function(TweetData) then) =
      _$TweetDataCopyWithImpl<$Res>;
  @override
  $Res call({String name, String text});
}

/// @nodoc
class _$TweetDataCopyWithImpl<$Res> extends _$TweetCopyWithImpl<$Res>
    implements $TweetDataCopyWith<$Res> {
  _$TweetDataCopyWithImpl(TweetData _value, $Res Function(TweetData) _then)
      : super(_value, (v) => _then(v as TweetData));

  @override
  TweetData get _value => super._value as TweetData;

  @override
  $Res call({
    Object name = freezed,
    Object text = freezed,
  }) {
    return _then(TweetData(
      name: name == freezed ? _value.name : name as String,
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

/// @nodoc
class _$TweetData implements TweetData {
  const _$TweetData({this.name, this.text});

  @override
  final String name;
  @override
  final String text;

  @override
  String toString() {
    return 'Tweet(name: $name, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TweetData &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(text);

  @override
  $TweetDataCopyWith<TweetData> get copyWith =>
      _$TweetDataCopyWithImpl<TweetData>(this, _$identity);
}

abstract class TweetData implements Tweet {
  const factory TweetData({String name, String text}) = _$TweetData;

  @override
  String get name;
  @override
  String get text;
  @override
  $TweetDataCopyWith<TweetData> get copyWith;
}
