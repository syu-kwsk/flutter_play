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

// ignore: unused_element
  TimeLineLoading loading() {
    return const TimeLineLoading();
  }
}

/// @nodoc
// ignore: unused_element
const $TimeLine = _$TimeLineTearOff();

/// @nodoc
mixin _$TimeLine {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<Tweet> timeline), {
    @required Result loading(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<Tweet> timeline), {
    Result loading(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(TimeLineData value), {
    @required Result loading(TimeLineLoading value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(TimeLineData value), {
    Result loading(TimeLineLoading value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $TimeLineCopyWith<$Res> {
  factory $TimeLineCopyWith(TimeLine value, $Res Function(TimeLine) then) =
      _$TimeLineCopyWithImpl<$Res>;
}

/// @nodoc
class _$TimeLineCopyWithImpl<$Res> implements $TimeLineCopyWith<$Res> {
  _$TimeLineCopyWithImpl(this._value, this._then);

  final TimeLine _value;
  // ignore: unused_field
  final $Res Function(TimeLine) _then;
}

/// @nodoc
abstract class $TimeLineDataCopyWith<$Res> {
  factory $TimeLineDataCopyWith(
          TimeLineData value, $Res Function(TimeLineData) then) =
      _$TimeLineDataCopyWithImpl<$Res>;
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

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<Tweet> timeline), {
    @required Result loading(),
  }) {
    assert($default != null);
    assert(loading != null);
    return $default(timeline);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<Tweet> timeline), {
    Result loading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(timeline);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(TimeLineData value), {
    @required Result loading(TimeLineLoading value),
  }) {
    assert($default != null);
    assert(loading != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(TimeLineData value), {
    Result loading(TimeLineLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class TimeLineData implements TimeLine {
  const factory TimeLineData({List<Tweet> timeline}) = _$TimeLineData;

  List<Tweet> get timeline;
  $TimeLineDataCopyWith<TimeLineData> get copyWith;
}

/// @nodoc
abstract class $TimeLineLoadingCopyWith<$Res> {
  factory $TimeLineLoadingCopyWith(
          TimeLineLoading value, $Res Function(TimeLineLoading) then) =
      _$TimeLineLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$TimeLineLoadingCopyWithImpl<$Res> extends _$TimeLineCopyWithImpl<$Res>
    implements $TimeLineLoadingCopyWith<$Res> {
  _$TimeLineLoadingCopyWithImpl(
      TimeLineLoading _value, $Res Function(TimeLineLoading) _then)
      : super(_value, (v) => _then(v as TimeLineLoading));

  @override
  TimeLineLoading get _value => super._value as TimeLineLoading;
}

/// @nodoc
class _$TimeLineLoading implements TimeLineLoading {
  const _$TimeLineLoading();

  @override
  String toString() {
    return 'TimeLine.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TimeLineLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<Tweet> timeline), {
    @required Result loading(),
  }) {
    assert($default != null);
    assert(loading != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<Tweet> timeline), {
    Result loading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(TimeLineData value), {
    @required Result loading(TimeLineLoading value),
  }) {
    assert($default != null);
    assert(loading != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(TimeLineData value), {
    Result loading(TimeLineLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TimeLineLoading implements TimeLine {
  const factory TimeLineLoading() = _$TimeLineLoading;
}
