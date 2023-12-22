// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/features/home/presentations/widgets/calendarTab.dart';
import 'package:jiitak/features/home/presentations/widgets/floatingActionButton.dart';
import 'package:jiitak/features/home/domain/providers/home_controller.dart';
import 'package:jiitak/features/home/presentations/widgets/appbars.dart';
import 'package:jiitak/features/home/presentations/widgets/jobBox.dart';

class SearchPage extends StatelessWidget {
  final JobListController _controller = Get.put(JobListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      floatingActionButton: LocationFAB(),
      body: SafeArea(
        child: Column(
          children: [
            HomeAppBar(),
            DateContainer(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CalendarAppBar(),
                    JobList(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class JobList extends StatelessWidget {
  final JobListController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return ListView.builder(
        physics:
            NeverScrollableScrollPhysics(), // Disable scrolling for the ListView
        shrinkWrap: true, // Enable shrink wrap
        itemCount: _controller.jobDetails.length,
        itemBuilder: (context, index) {
          return JobBox(
            imagePath: _controller.jobDetails[index]['imagePath']!,
            title: _controller.jobDetails[index]['title']!,
            amount: _controller.jobDetails[index]['amount']!,
            date: _controller.jobDetails[index]['date']!,
          );
        },
      );
    });
  }
}
