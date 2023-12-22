import 'package:flutter/material.dart';
import 'package:jiitak/features/home/presentations/widgets/constants.dart';

class CurrencyCol extends StatelessWidget {
  const CurrencyCol({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "予算",
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            children: [
              Container(
                height: 40,
                width: screenWidth(context) / 3,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5,
                    color: Colors.black38, // Transparent border color
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: TextField(
                  controller: TextEditingController(text: "1000"),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    border: InputBorder.none,
                    isCollapsed: true,
                    // Align the text vertically to the center
                    alignLabelWithHint: true, // Remove the underline
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
              Container(
                height: 40,
                width: screenWidth(context) / 3,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5,
                    color: Colors.black38, // Transparent border color
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: TextField(
                  controller: TextEditingController(text: "2000"),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    border: InputBorder.none,
                    isCollapsed: true,
                    // Align the text vertically to the center
                    alignLabelWithHint: true, // Remove the underline
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
