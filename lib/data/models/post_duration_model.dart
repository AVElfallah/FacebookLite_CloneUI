class FBShortDuration {
  FBShortDuration({
    this.year = 0,
    this.month = 0,
    this.day = 0,
    this.minute = 0,
  }) {
    // convert time if larger than limit
    //day if more 7 to week
    //minute if more 60 to hour
    //month if larger than 12 to year
    if (day! >= 7)
      week = int.parse((day! / 7).toString().split('.').toList().first);

    if (minute! >= 60)
      hour = int.parse((minute! / 60).toString().split('.').toList().first);

    if (month! > 12) {
      year =
          year! + int.parse((month! / 12).toString().split('.').toList().first);
    }
  }
  int? year = 0, month = 0, day = 0, minute = 0, week = 0, hour = 0;

  String get largerTimeWithString {
    String backString = '';
    if (year! > 0) {
      backString = year.toString() + ' y'; //year

    } else if (month! > 0) {
      backString = month.toString() + ' m'; //month

    } else if (week! > 0) {
      backString = week.toString() + ' w'; //week

    } else if (day! < 7 && day! > 0) {
      backString = (day).toString() + ' d'; //day
    } else if (hour! > 0 && hour! < 24) {
      backString = (hour!).toString() + ' h'; //hour
    } else if (minute! < 60 && minute! > 0) {
      backString = (minute).toString() + ' min'; //minute

    } else {
      backString = 'just now';
    }
    return backString;
  }
}

class FBLongDuration extends FBShortDuration {
  FBLongDuration({
    int? day,
    int? month,
    int? year,
    int? minute,
  }) : super(day: day, month: month, year: year, minute: minute);
  @override
  String get largerTimeWithString {
    String backString = '';
    if (year! > 0) {
      backString = '$year ${(year! > 1) ? ' years ago' : ' year ago'}'; //year

    } else if (month! > 0) {
      //month
      backString = '$month ${(month! > 1) ? ' months ago' : ' month ago'}';
    } else if (week! > 0) {
      //week
      backString = '$week ${(week! > 1) ? ' weeks ago' : ' week ago'}';
    } else if (day! < 7 && day! > 0) {
      //day
      backString = '$day ${(day! > 1) ? ' dayes ago' : ' day ago'}';
    } else if (hour! > 0 && hour! < 24) {
      //hour
      backString = '$hour ${(hour! > 1) ? ' hours ago' : ' hour ago'}';
    } else if (minute! < 60 && minute! > 0) {
      //minute
      backString = '$minute ${(minute! > 1) ? ' minutes ago' : ' minute ago'}';
    } else {
      backString = 'just now';
    }
    return backString;
  }
}
