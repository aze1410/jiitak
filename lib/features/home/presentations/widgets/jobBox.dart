import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:like_button/like_button.dart';

class JobBox extends StatelessWidget {
  final String imagePath;
  final String title;
  final String amount;
  final String date;

  const JobBox({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.amount,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 28),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color:
                      Colors.black.withOpacity(0.1), // Shadow color and opacity
                  blurRadius: 1, // Spread of the shadow
                  offset: const Offset(0, 0), // Offset from the top
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // image
                Container(
                  height: 186,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Other child widgets go here...
                ),
                SizedBox(height: 4.0),

                // title
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14.5),
                        textScaleFactor: 1,
                      ),
                      SizedBox(height: 8.0),

                      // amount row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //
                          Flexible(
                            child: Container(
                              height: 25,
                              color: Colors.orange.shade50,
                              child: Center(
                                child: Text(
                                  '  介護付き有料老人ホーム  ',
                                  style: TextStyle(
                                    color: Colors.orange.shade400,
                                    fontSize: 10.0,
                                  ),
                                  textScaleFactor: 1,
                                ),
                              ),
                            ),
                          ),

                          //
                          Flexible(
                            child: Text(
                              amount,
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.w600),
                              textScaleFactor: 1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      // detail1 text
                      Text(
                        date,
                        style: TextStyle(
                          fontSize: 13.0,
                        ),
                        textScaleFactor: 1,
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        '北海道札幌市東雲町3丁目916番地17号',
                        style: TextStyle(fontSize: 13.0),
                        textScaleFactor: 1,
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        '交通費 300円',
                        style: TextStyle(fontSize: 13.0),
                        textScaleFactor: 1,
                      ),
                      SizedBox(height: 4.0),
                      // detail2 row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              '住宅型有料老人ホームひまわり倶楽部',
                              style:
                                  TextStyle(fontSize: 13.0, color: Colors.grey),
                              textScaleFactor: 1,
                            ),
                          ),

                          // like button
                          LikeButton(
                            size: 30,
                            circleColor: CircleColor(
                              start: Colors.grey[400]!,
                              end: Colors.grey[200]!,
                            ),
                            bubblesColor: BubblesColor(
                              dotPrimaryColor: Colors.grey[200]!,
                              dotSecondaryColor: Colors.grey[300]!,
                            ),
                            likeBuilder: (bool isLiked) {
                              return Icon(
                                isLiked
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: isLiked
                                    ? Colors.red
                                    : Colors.grey
                                        .shade300, // Change color to grey for the initial outline state
                                size: 30,
                              );
                            },
                            onTap: (isLiked) {
                              // Handle tap
                              return Future.value(
                                  !isLiked); // Return true to toggle the like state
                            },
                            isLiked:
                                false, // Set to true for the initial liked state, false for the initial unliked state
                            animationDuration: Duration(
                                milliseconds: 0), // Set to 0 for no animation
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 165,
          left: 19,
          child: Container(
            height: 22,
            width: 70,
            decoration: BoxDecoration(color: Colors.pink.shade300),
            // Other child widgets go here...
            child: Center(
              child: Text(
                "本日まで",
                style: TextStyle(fontSize: 10.0, color: Colors.white),
                textScaleFactor: 1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
