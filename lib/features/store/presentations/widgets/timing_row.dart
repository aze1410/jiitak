import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimingCol extends StatelessWidget {
  final String heading;
  final String defaultStartTime;
  final String defaultEndTime;

  const TimingCol({
    Key? key,
    required this.heading,
    required this.defaultStartTime,
    required this.defaultEndTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              heading,
              style: TextStyle(
                fontSize: 14.0,
              ),
              textScaleFactor: 1,
            ),
            Text(
              "*",
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.pink.shade400,
              ),
              textScaleFactor: 1,
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5,
                    color: Colors.black38, // Transparent border color
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: DropdownButton<String>(
                  value: defaultStartTime,
                  items: <String>[
                    '10.00',
                    '11.00',
                    '15.00',
                    '20.00',
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          value,
                          style: GoogleFonts.notoSansJp(fontSize: 18),
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    // Handle dropdown value change
                    print("Selected start time: $newValue");
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Colors.black38,
                    size: 30,
                  ),
                  underline: Container(
                    height: 0,
                  ),
                  isExpanded: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                "〜",
                style: TextStyle(
                  fontSize: 15.0,
                ),
                textScaleFactor: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5,
                    color: Colors.black38, // Transparent border color
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: DropdownButton<String>(
                  value: defaultEndTime,
                  items: <String>[
                    '10.00',
                    '11.00',
                    '15.00',
                    '20.00',
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          value,
                          style: GoogleFonts.notoSansJp(fontSize: 18),
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    // Handle dropdown value change
                    print("Selected end time: $newValue");
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Colors.black38,
                    size: 30,
                  ),
                  underline: Container(
                    height: 0,
                  ),
                  isExpanded: true,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
