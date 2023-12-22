import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Imagecol extends StatelessWidget {
  final String heading;
  final String hinttext;
  final String imagePath;

  const Imagecol({
    Key? key,
    required this.heading,
    required this.hinttext,
    required this.imagePath,
  }) : super(key: key);

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
              "*  ",
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.pink.shade400,
              ),
              textScaleFactor: 1,
            ),
            Flexible(
              child: Text(
                hinttext,
                style: TextStyle(fontSize: 14.0, color: Colors.grey.shade400),
                textScaleFactor: 1,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: SizedBox(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}

class Imagecol2 extends StatelessWidget {
  final String imagePath;

  const Imagecol2({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          child: SizedBox(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
