enum DaysOfWeek {
  monday("Monday"),
  tuesday("Tuesday"),
  wednesday("Wednesday"),
  thursday("Thursday"),
  friday("Friday"),
  saturday("Saturday"),
  sunday("Sunday");

  const DaysOfWeek(this.day);
  final String day;
}

class DateTimeUtil {
  static List<String> getNextNeededDays(int amount) {
    final now = DateTime.now();
    const days = DaysOfWeek.values;

    return List.generate(amount, (index) {
      final nextDayIndex = (now.weekday - 1 + index) % days.length;
      return days[nextDayIndex].day;
    });
  }
}
