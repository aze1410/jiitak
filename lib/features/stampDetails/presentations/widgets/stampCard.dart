
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomStampCard extends StatelessWidget {
  final String date;
  final String title;
  final String quantity;

  const CustomStampCard({
    Key? key,
    required this.date,
    required this.title,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: TextStyle(
              color: Colors.grey.shade400,
              fontWeight: FontWeight.w500,
              fontSize: 13,
              letterSpacing: 1,
            ),
            textScaleFactor: 1,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300),
                textScaleFactor: 1,
              ),
              Text(
                quantity,
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
                textScaleFactor: 1,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Divider(
              color: Colors.grey.shade200,
            ),
          ),
        ],
      ),
    );
  }
}
