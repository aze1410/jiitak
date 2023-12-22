import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:intl/intl.dart';
import 'package:jiitak/features/home/presentations/widgets/constants.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12.0, vertical: 0),
                  child: Container(
                    height: 36,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(30)),
                    child: TextField(
                      controller: TextEditingController(text: "北海道, 札幌市"),
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
              ),

              //
              Row(
                children: [
                  SvgPicture.asset("assets/navbaricons/filter.svg"),

                  SizedBox(
                    width: screenHeight(context) * 0.010,
                  ),

                  //
                  Icon(
                    Icons.favorite_border_outlined,
                    size: 30,
                    color: Colors.red,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        //
      ],
    );
  }
}

class StampDetailsAppBar extends StatelessWidget {
  const StampDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.black.withOpacity(0.1),
                    //     blurRadius: 5,
                    //     offset: const Offset(0, 0),
                    //   ),
                    // ],
                    color: Color(0xFF949EFF),
                    borderRadius: BorderRadius.circular(30)),
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  size: 15,
                  color: Colors.white,
                ),
              ),
            ),
            //
            Text(
              "スタンプカード詳細",
              style: TextStyle(fontSize: 16.0, color: Colors.white),
              textScaleFactor: 1,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SvgPicture.asset("assets/images/minus-circle.svg"),
            )
          ],
        ),
      ),
    );
  }
}

class StoreInfoPageAppBar extends StatelessWidget {
  const StoreInfoPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.black.withOpacity(0.1),
                    //     blurRadius: 5,
                    //     offset: const Offset(0, 0),
                    //   ),
                    // ],
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(30)),
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  size: 15,
                  color: Colors.black38,
                ),
              ),
            ),
            //
            Text(
              "店舗プロフィール編集",
              style: TextStyle(
                  fontSize: screenHeight(context) * 0.018, color: Colors.black),
              textScaleFactor: 1,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SvgPicture.asset("assets/images/bell.svg"),
            )
          ],
        ),
      ),
    );
  }
}
