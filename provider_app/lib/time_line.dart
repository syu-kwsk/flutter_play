import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

import 'package:provider_app/tweet.dart';

part 'time_line.freezed.dart';

@freezed
abstract class TimeLine with _$TimeLine {
  const factory TimeLine({
    @Default(<Tweet>[]) List<Tweet> timeline,
  }) = TimeLineData;
  const factory TimeLine.loading() = TimeLineLoading;
}

class TimeLineController extends StateNotifier<TimeLine> with LocatorMixin {
  TimeLineController() : super(const TimeLine.loading());

  void add(String name, String text) {
    final currentState = state;
    if (currentState is TimeLineData) {
      final timeline = currentState.timeline.toList()
        ..add(
          Tweet(name: name, text: text),
        );
      state = currentState.copyWith(
        timeline: timeline,
      );
    }
  }
}