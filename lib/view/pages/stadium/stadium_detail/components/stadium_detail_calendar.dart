import 'package:flutter/material.dart';
import 'package:sporting_app/core/constants/my_colors.dart';

class StadiumDetailCalendar extends StatefulWidget {
  const StadiumDetailCalendar({Key? key}) : super(key: key);

  @override
  State<StadiumDetailCalendar> createState() => _StadiumDetailCalendarState();
}

class _StadiumDetailCalendarState extends State<StadiumDetailCalendar> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "예약 일시",
          style: TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
        ),
        const SizedBox(height: 10),
        Card(
          shadowColor: kGrayColor,
          child: InkWell(
            onTap: () async {
              final DateTime picked = await showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Align(
                    alignment: Alignment.center,
                    child: _buildCalenderModal(),
                  );
                },
              );
              if (picked != selectedDate) {
                setState(
                  () {
                    selectedDate = picked;
                  },
                );
              }
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.calendar_month),
                    const SizedBox(width: 10),
                    Text(
                        "${selectedDate.year} - ${selectedDate.month} - ${selectedDate.day}"),
                  ],
                ),
                const Icon(Icons.keyboard_arrow_down, color: Colors.orange),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container _buildCalenderModal() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/login.png"),
          fit: BoxFit.cover,
        ),
      ),
      height: 700,
      child: DatePickerDialog(
        initialDate: selectedDate,
        firstDate: DateTime.now().subtract(const Duration(days: 3600)),
        lastDate: DateTime.now().add(const Duration(days: 365)),
      ),
    );
  }
}
