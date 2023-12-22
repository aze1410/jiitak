import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:jiitak/features/home/presentations/widgets/constants.dart';
import 'package:jiitak/features/stampDetails/presentations/widgets/stampBox.dart';
import 'package:jiitak/features/stampDetails/presentations/widgets/stampCard.dart';
import 'package:jiitak/features/stampDetails/presentations/widgets/stampHeading.dart';
import 'package:jiitak/features/home/presentations/widgets/appbars.dart';

import '../../domain/providers/stampdetails_controller.dart';

class StampDetailsPage extends StatelessWidget {
  final StampDetailsController _controller = Get.put(StampDetailsController());

  StampDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA8B1FF),
      body: SafeArea(
        child: Column(
          children: [
            StampDetailsAppBar(),
            StampHeading(),
            SizedBox(height: screenHeight(context) * 0.005),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MultipleStampBoxes(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "スタンプ獲得履歴",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                            textScaleFactor: 1,
                          ),
                          SizedBox(height: screenHeight(context) * 0.015),
                          SizedBox(
                            height: screenHeight(context) / 3.85,
                            child: SingleChildScrollView(
                              child: Column(
                                children: _controller.stampDataList.map(
                                  (stampData) {
                                    return CustomStampCard(
                                      date: stampData['date']!,
                                      title: stampData['title']!,
                                      quantity: stampData['quantity']!,
                                    );
                                  },
                                ).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
