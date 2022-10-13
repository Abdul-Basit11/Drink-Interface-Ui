
import 'package:flutter/material.dart';

import '../app_constant/app_constant.dart';

class SmallContainer extends StatelessWidget {

  final String image;
  final String txt;

  const SmallContainer({super.key, required this.image, required this.txt});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      height: 80,
      width: 80,
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius:
          BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment:
        MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            image,
            scale: 15,
            color: AppColor.kTextColor,
          ),
          Text(
           txt,
            style: TextStyle(
                color: AppColor.kTextColor),
          )
        ],
      ),
    );

  }
}
