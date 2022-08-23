import 'package:fblite_clone/data/localizations/app_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class FBDuration {
  FBDuration(
      {this.month = 0,
      this.hour = 0,
      this.week = 0,
      this.day = 0,
      this.minute = 0,
      this.year = 0});
  final int year, month, week, day, hour, minute;

  String? toLargeString(BuildContext context);
  String? toShortString(BuildContext context);
}

class FBAppDuration extends FBDuration {
  FBAppDuration({
    super.day = 0,
    super.hour = 0,
    super.minute = 0,
    super.month = 0,
    super.week = 0,
    super.year = 0,
  });

  @override
  String? toLargeString(BuildContext? context) {
    if (year > 0) {
      return year == 1
          ? getLang(context!, 'year_ago')
          : "$year ${getLang(context!, 'years_ago')}";
    } else if (month > 0) {
      return month == 1
          ? getLang(context!, 'month_ago')
          : "$month ${getLang(context!, 'months_ago')}";
    } else if (week > 0) {
      return week == 1
          ? getLang(context!, 'week_ago')
          : "$week ${getLang(context!, 'weeks_ago')}";
    } else if (day > 0) {
      return day == 1
          ? getLang(context!, 'day_ago')
          : "$day ${getLang(context!, 'days_ago')}";
    } else if (hour > 0) {
      return hour == 1
          ? getLang(context!, 'hour_ago')
          : "$hour ${getLang(context!, 'hours_ago')}";
    } else if (minute > 0) {
      return minute == 1
          ? getLang(context!, 'minute_ago')
          : "$minute ${getLang(context!, 'minutes_ago')}";
    }
    return getLang(context!, 'just_now');
  }

  @override
  String? toShortString(BuildContext? context) {
    if (year > 0) {
      return "$year${getLang(context!, 'y')}";
    } else if (month > 0) {
      return "$month${getLang(context!, 'm')}";
    } else if (week > 0) {
      return "$week${getLang(context!, 'w')}";
    } else if (day > 0) {
      return "$day${getLang(context!, 'd')}";
    } else if (hour > 0) {
      return "$hour${getLang(context!, 'h')}";
    } else if (minute > 0) {
      return "$minute${getLang(context!, 'min')}";
    }
    return "0${getLang(context!, 'min')}";
  }
}
