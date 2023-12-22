import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CuisineCategory extends StatelessWidget {
  const CuisineCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "料理カテゴリー",
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
        // Add some spacing between text and dropdown
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Container(
            height: 40,
            width: 220,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.5,
                color: Colors.black38, // Transparent border color
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            child: DropdownButton<String>(
              items: <String>[
                'Category 1',
                'Category 2',
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      value,
                      style: GoogleFonts.notoSansJp(fontSize: 16),
                    ),
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                // Handle dropdown value change
                print("Selected: $newValue");
              },
              hint: Text("    料理カテゴリー選択"),
              icon: Icon(
                Icons.keyboard_arrow_down_sharp,
                color: Colors.black38,
                size: 30,
              ),
              underline: Container(
                height: 0, // Remove the underline by setting its height to zero
              ), // Optional hint text
              isExpanded:
                  true, // Allows the dropdown to take the full width of the container
            ),
          ),
        ),
      ],
    );
  }
}
