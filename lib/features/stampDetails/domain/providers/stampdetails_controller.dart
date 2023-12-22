import 'package:get/get.dart';

class StampDetailsController extends GetxController {
  final RxList<Map<String, String>> stampDataList = [
    {"date": "2021 / 11 / 18", "title": "スタンプを獲得しました。", "quantity": "1 個"},
    {"date": "2021 / 11 / 18", "title": "スタンプを獲得しました。", "quantity": "1 個"},
    {"date": "2021 / 11 / 18", "title": "スタンプを獲得しました。", "quantity": "1 個"},
    // {"date": "2021 / 11 / 18", "title": "スタンプを獲得しました。", "quantity": "1 個"},
    // {"date": "2021 / 11 / 18", "title": "スタンプを獲得しました。", "quantity": "1 個"},
    // Add more data as needed
  ].obs;
}
