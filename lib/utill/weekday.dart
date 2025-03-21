
extension DateWeekExtensions on DateTime {
  int get weekOfYear {
    final woy = ((ordinalDate - weekday + 10) ~/ 7);

    if (woy == 0) {
      return DateTime(year - 1, 12, 28).weekOfYear;
    }

    if (woy == 53 &&
        DateTime(year, 1, 1).weekday != DateTime.thursday &&
        DateTime(year, 12, 31).weekday != DateTime.thursday) {
      return 1;
    }

    return woy;
  }

  int get ordinalDate {
    const offsets = [0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334];
    return offsets[month - 1] + day + (isLeapYear && month > 2 ? 1 : 0);
  }

  bool get isLeapYear {
    return year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);
  }
}

extension DateOnlyCompare on DateTime {
  bool isBeforeOrSameDate(DateTime other) {
    return isBefore(other) || isAtSameMomentAs(other);
  }

  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}
