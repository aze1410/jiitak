
import 'package:flutter/material.dart';

class TextfieldCol extends StatelessWidget {
  final String heading;
  final String? defaultText;

  TextfieldCol({required this.heading, this.defaultText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.5,
                color: Colors.black38, // Transparent border color
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            child: TextField(
              controller: TextEditingController(text: defaultText),
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
        ),
      ],
    );
  }
}
