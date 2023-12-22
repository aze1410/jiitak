import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class CalendarController extends GetxController {
  var selectedDate = DateTime.now().day.obs;
}

class CalendarAppBar extends StatelessWidget {
  const CalendarAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                30,
                (index) => CalendarDateWidget(
                  day: DateTime.now().day + index,
                  isSelected: CalendarController().selectedDate.value ==
                      DateTime.now().day + index,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DateContainer extends StatelessWidget {
  const DateContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0),
      child: Container(
        height: 35,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.yellow.shade700, Colors.orange.shade300],
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Obx(
            () => Text(
              "${DateTime.now().year}年 ${DateTime.now().month}月 ${CalendarController().selectedDate.value}日",
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w600,
              ),
              textScaleFactor: 1,
            ),
          ),
        ),
      ),
    );
  }
}

class CalendarDateWidget extends StatelessWidget {
  final int day;
  final bool isSelected;

  const CalendarDateWidget({
    Key? key,
    required this.day,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        CalendarController().selectedDate.value = day;
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Container(
          height: 75,
          width: 50,
          margin: EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            color: isSelected ? Colors.yellow.shade700 : null,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                _getDayOfWeek(),
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: isSelected ? Colors.white : null,
                ),
                textScaleFactor: 1,
              ),
              Text(
                "$day",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: isSelected ? Colors.white : null,
                ),
                textScaleFactor: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getDayOfWeek() {
    final dateTime = DateTime.now().add(Duration(days: day - 1));
    initializeDateFormatting('ja_JP', null);
    return DateFormat('E', 'ja_JP').format(dateTime);
  }
}
