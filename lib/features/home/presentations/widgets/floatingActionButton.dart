import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class LocationFAB extends StatelessWidget {
  const LocationFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 80),
      child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 5,
              offset: const Offset(0, 0),
            ),
          ], color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: SvgPicture.asset(
              "assets/navbaricons/location.svg",
            ),
          )),
    );
  }
}
