import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calender extends StatelessWidget {
  Calender({super.key});
  CalendarFormat calendarFormat = CalendarFormat.month;
  DateTime focusDay = DateTime.now();
  DateTime? selectedDay;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        border: Border.all(width: 1, color: Colors.green),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TableCalendar(
            headerStyle: const HeaderStyle(
              titleCentered: true,
              formatButtonVisible: false,
            ),
            rowHeight: 45,
            daysOfWeekHeight: 16,
            calendarStyle: const CalendarStyle(
              todayDecoration:
                  BoxDecoration(color: Colors.green, shape: BoxShape.circle),
              selectedDecoration: BoxDecoration(color: Colors.green),
            ),
            onFormatChanged: (format) {},
            onDaySelected: (selectedDay, focusedDay) {},
            focusedDay: focusDay,
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            calendarFormat: calendarFormat,
          ),
        ],
      ),
    );
  }
}
