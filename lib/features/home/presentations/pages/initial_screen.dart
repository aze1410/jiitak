import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../store/presentations/pages/storeInfo_screen.dart';
import 'home_screen.dart';
import '../../../stampDetails/presentations/pages/stamp_screen.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Initial Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(() => HomePage());
              },
              child: Text('Go to Home Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => StampDetailsPage());
              },
              child: Text('Go to Stamp Details Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => StoreInfoPage());
              },
              child: Text('Go to Store Info Page'),
            ),
          ],
        ),
      ),
    );
  }
}
