import 'package:get/get.dart';

class JobListController extends GetxController {
  final RxList<Map<String, String>> jobDetails = [
    {
      'imagePath': 'assets/images/job1.png',
      'title': '介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）',
      'amount': '¥ 6,000',
      'date': '5月 31日（水）08:00 ~ 17:00',
    },
    {
      'imagePath': 'assets/images/job2.png',
      'title': '介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）',
      'amount': '7,000 円',
      'date': 'June 1, 2023, 09:00 ~ 18:00',
    },
    {
      'imagePath': 'assets/images/job1.png',
      'title': '介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）',
      'amount': '¥ 6,000',
      'date': '5月 31日（水）08:00 ~ 17:00',
    },
    {
      'imagePath': 'assets/images/job2.png',
      'title': '介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）',
      'amount': '7,000 円',
      'date': 'June 1, 2023, 09:00 ~ 18:00',
    },
  ].obs;
}
