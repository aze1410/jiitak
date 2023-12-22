import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jiitak/features/home/presentations/widgets/constants.dart';

class NavBox extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const NavBox({
    Key? key,
    required this.onTap,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          height: screenHeight(context) * 0.095,
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavItem(
                onTap: () {
                  onTap(0);
                },
                label: "さがす",
                iconPath: "assets/navbaricons/search",
                selectedIndex: selectedIndex,
                itemIndex: 0,
              ),
              NavItem(
                onTap: () {
                  onTap(1);
                },
                label: "お仕事",
                iconPath: "assets/navbaricons/bag",
                selectedIndex: selectedIndex,
                itemIndex: 1,
              ),
              SizedBox(
                width: screenWidth(context) * 0.170,
              ), // Fixed width
              NavItem(
                onTap: () {
                  onTap(3);
                },
                label: "チャット",
                iconPath: "assets/navbaricons/chat",
                selectedIndex: selectedIndex,
                itemIndex: 3,
              ),
              NavItem(
                onTap: () {
                  onTap(4);
                },
                label: "マイページ",
                iconPath: "assets/navbaricons/profile",
                selectedIndex: selectedIndex,
                itemIndex: 4,
              ),
            ],
          ),
        ),
        Transform(
          alignment:
              const Alignment(0, -3), // Adjust the alignment to move it higher
          transform: Matrix4.identity()
            ..translate(0.0, -15.0), // Adjust the translation as needed
          child: Align(
            alignment: Alignment.topCenter,
            child: CircularNavItem(
              onTap: () {
                onTap(2);
              },
              selectedIndex: selectedIndex,
              itemIndex: 2,
              iconPath: "assets/navbaricons/scan",
            ),
          ),
        ),
      ],
    );
  }
}

class NavItem extends StatelessWidget {
  final Function() onTap;
  final String label;
  final String iconPath;
  final int selectedIndex;
  final int itemIndex;

  NavItem({
    required this.onTap,
    required this.label,
    required this.iconPath,
    required this.selectedIndex,
    required this.itemIndex,
  });

  @override
  Widget build(BuildContext context) {
    final isActive = selectedIndex == itemIndex;
    final color = isActive ? Colors.yellow.shade700 : Colors.black;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: screenWidth(context) * 0.14,
        height: screenHeight(context) * 0.10,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: screenHeight(context) * 0.012),
            SvgPicture.asset(
              "${iconPath}${isActive ? '2' : '1'}.svg",
              height: screenHeight(context) * 0.030, // Fixed height
              color: color,
            ),
            SizedBox(height: screenHeight(context) * 0.006),
            Text(
              label,
              style: TextStyle(
                color: color,
                fontSize: screenHeight(context) * 0.012, // Fixed font size
                fontWeight: FontWeight.w600,
              ),
              textScaleFactor: 1,
            ),
          ],
        ),
      ),
    );
  }
}

class CircularNavItem extends StatelessWidget {
  final Function() onTap;
  final String iconPath;
  final int selectedIndex;
  final int itemIndex;

  CircularNavItem({
    required this.onTap,
    required this.iconPath,
    required this.selectedIndex,
    required this.itemIndex,
  });

  @override
  Widget build(BuildContext context) {
    final isActive = selectedIndex == itemIndex;
    final color = isActive ? Colors.yellow.shade700 : Colors.black;
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: screenWidth(context) * 0.85,
            height: screenHeight(context) * 0.060,
            child: Center(
              child: SvgPicture.asset(
                "assets/navbaricons/scan.svg",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Text(
              "打刻する",
              style: TextStyle(
                color: color,
                fontSize: screenHeight(context) * 0.012, // Fixed font size
                fontWeight: FontWeight.w600,
              ),
              textScaleFactor: 1,
            ),
          ),
        ],
      ),
    );
  }
}
