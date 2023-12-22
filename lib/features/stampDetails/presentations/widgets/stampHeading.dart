
import 'package:flutter/material.dart';

class StampHeading extends StatelessWidget {
  const StampHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Text(
            "Mer キッチン",
            style: TextStyle(fontSize: 16.0, color: Colors.white),
            textScaleFactor: 1,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                "現在の獲得数   ",
                style: TextStyle(fontSize: 12.0, color: Colors.white),
                textScaleFactor: 1,
              ),
              Text(
                "30 ",
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
                textScaleFactor: 1,
              ),
              Text(
                "個 ",
                style: TextStyle(fontSize: 12.0, color: Colors.white),
                textScaleFactor: 1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
