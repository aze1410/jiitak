import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jiitak/features/home/presentations/widgets/constants.dart';

class MultipleStampBoxes extends StatelessWidget {
  const MultipleStampBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight(context) * 0.005,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: screenHeight(context) * 0.018),
              StampBox(),
              StampBox(),
              SizedBox(width: screenHeight(context) * 0.018),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(300, 0, 0, 0),
          child: Text(
            "2 / 2枚目",
            style: TextStyle(
              fontSize: 12.0,
            ),
            textScaleFactor: 1,
          ),
        ),
      ],
    );
  }
}

class StampBox extends StatelessWidget {
  const StampBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            SvgPicture.asset("assets/images/stampbox.svg"),
          ],
        ),
      ),
    );
  }
}
