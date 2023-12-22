
import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 55,
        decoration: BoxDecoration(
            color: Colors.pink.shade200,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            "編集を保存",
            style: TextStyle(fontSize: 12.0, color: Colors.white),
            textScaleFactor: 1,
          ),
        ),
      ),
    );
  }
}
