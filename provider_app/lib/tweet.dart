import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'tweet.freezed.dart';

@freezed
abstract class Tweet with _$Tweet {
  const factory Tweet({
    String name,
    String text
  }) = TweetData;
}
