// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../home/presentations/widgets/appbars.dart';
import '../widgets/buttons.dart';
import '../widgets/checklist_widget.dart';
import '../widgets/cuisinie_row.dart';
import '../widgets/currency_row.dart';
import '../widgets/image_widget.dart';
import '../widgets/textfield_widget.dart';
import '../widgets/timing_row.dart';

class StoreInfoPage extends StatelessWidget {
  const StoreInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ///
            GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                ),
                itemCount: 500,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(0, -1),
                        stops: [0.0, 0.5, 0.5, 1],
                        colors: [
                          Colors.white,
                          Colors.white,
                          Color.fromARGB(15, 251, 173, 199),
                          Color.fromARGB(15, 251, 173, 199),
                        ],
                        tileMode: TileMode.repeated,
                      ),
                    ),
                  );
                }),

            ///
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //appbar
                  StoreInfoPageAppBar(),
                  //4 textfields
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextfieldCol(heading: "店舗名", defaultText: "Mer キッチン"),
                        TextfieldCol(heading: "代表担当者名", defaultText: "林田　絵梨花"),
                        TextfieldCol(
                            heading: "店舗電話番号", defaultText: "123 - 4567 8910"),
                        TextfieldCol(
                            heading: "店舗住所", defaultText: "大分県豊後高田市払田791-13"),
                        Image.asset("assets/images/mapp.png", scale: 0.7),
                        Imagecol2(imagePath: "assets/images/location.png"),
                        Imagecol(
                            heading: "店舗内観",
                            hinttext: "(1枚〜3枚ずつ追加してください)",
                            imagePath: "assets/images/interior.png"),
                        Imagecol(
                            heading: "料理写真",
                            hinttext: "(1枚〜3枚ずつ追加してください)",
                            imagePath: "assets/images/foods.png"),
                        Imagecol(
                            heading: "メニュー写真",
                            hinttext: "(1枚〜3枚ずつ追加してください)",
                            imagePath: "assets/images/menu.png"),
                        TimingCol(
                            heading: "営業時間",
                            defaultStartTime: "10.00",
                            defaultEndTime: "20.00"),
                        TimingCol(
                            heading: "ランチ時間",
                            defaultStartTime: "11.00",
                            defaultEndTime: "15.00"),
                        ChecklistCol(
                            heading: "定休日",
                            options: ["月", "火", "水", "木", "金", "土", "日", "祝"]),
                        CuisineCategory(),
                        CurrencyCol(),
                        TextfieldCol(
                            heading: "キャッチコピー",
                            defaultText: "美味しい！リーズナブルなオムライスランチ！"),
                        TextfieldCol(heading: "座席数", defaultText: "40席"),
                        ChecklistCol(heading: "喫煙席", options: ["有", "無"]),
                        ChecklistCol(heading: "駐車場", options: ["有", "無"]),
                        ChecklistCol(
                            heading: "来店プレゼント", options: ["有（最大３枚まで）", "無"]),
                        Imagecol2(imagePath: "assets/images/juice.png"),
                        TextfieldCol(
                            heading: "来店プレゼント名",
                            defaultText: "いちごクリームアイスクリーム, ジュース"),
                        SubmitButton()
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
