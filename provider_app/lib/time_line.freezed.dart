// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'time_line.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TimeLineTearOff {
  const _$TimeLineTearOff();

// ignore: unused_element
  TimeLineData call({List<Tweet> timeline = const <Tweet>[]}) {
    return TimeLineData(
      timeline: timeline,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TimeLine = _$TimeLineTearOff();

/// @nodoc
mixin _$TimeLine {
  List<Tweet> get timeline;

  $TimeLineCopyWith<TimeLine> get copyWith;
}

/// @nodoc
abstract class $TimeLineCopyWith<$Res> {
  factory $TimeLineCopyWith(TimeLine value, $Res Function(TimeLine) then) =
      _$TimeLineCopyWithImpl<$Res>;
  $Res call({List<Tweet> timeline});
}

/// @nodoc
class _$TimeLineCopyWithImpl<$Res> implements $TimeLineCopyWith<$Res> {
  _$TimeLineCopyWithImpl(this._value, this._then);

  final TimeLine _value;
  // ignore: unused_field
  final $Res Function(TimeLine) _then;

  @override
  $Res call({
    Object timeline = freezed,
  }) {
    return _then(_value.copyWith(
      timeline: timeline == freezed ? _value.timeline : timeline as List<Tweet>,
    ));
  }
}

/// @nodoc
abstract class $TimeLineDataCopyWith<$Res> implements $TimeLineCopyWith<$Res> {
  factory $TimeLineDataCopyWith(
          TimeLineData value, $Res Function(TimeLineData) then) =
      _$TimeLineDataCopyWithImpl<$Res>;
  @override
  $Res call({List<Tweet> timeline});
}

/// @nodoc
class _$TimeLineDataCopyWithImpl<$Res> extends _$TimeLineCopyWithImpl<$Res>
    implements $TimeLineDataCopyWith<$Res> {
  _$TimeLineDataCopyWithImpl(
      TimeLineData _value, $Res Function(TimeLineData) _then)
      : super(_value, (v) => _then(v as TimeLineData));

  @override
  TimeLineData get _value => super._value as TimeLineData;

  @override
  $Res call({
    Object timeline = freezed,
  }) {
    return _then(TimeLineData(
      timeline: timeline == freezed ? _value.timeline : timeline as List<Tweet>,
    ));
  }
}

/// @nodoc
class _$TimeLineData implements TimeLineData {
  const _$TimeLineData({this.timeline = const <Tweet>[]})
      : assert(timeline != null);

  @JsonKey(defaultValue: const <Tweet>[])
  @override
  final List<Tweet> timeline;

  @override
  String toString() {
    return 'TimeLine(timeline: $timeline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimeLineData &&
            (identical(other.timeline, timeline) ||
                const DeepCollectionEquality()
                    .equals(other.timeline, timeline)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(timeline);

  @override
  $TimeLineDataCopyWith<TimeLineData> get copyWith =>
      _$TimeLineDataCopyWithImpl<TimeLineData>(this, _$identity);
}

abstract class TimeLineData implements TimeLine {
  const factory TimeLineData({List<Tweet> timeline}) = _$TimeLineData;

  @override
  List<Tweet> get timeline;
  @override
  $TimeLineDataCopyWith<TimeLineData> get copyWith;
}
