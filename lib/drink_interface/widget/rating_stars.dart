
import 'package:flutter/material.dart';

import '../app_constant/app_constant.dart';

class RatingStars extends StatelessWidget {
  const RatingStars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Icon(Icons.star,color: AppColor.kTextColor,),
        Icon(Icons.star,color: AppColor.kTextColor,),
        Icon(Icons.star,color: AppColor.kTextColor,),
        Icon(Icons.star,color: AppColor.kTextColor,),
        Icon(Icons.star,color: AppColor.kTextColor,),
      ],
    );

  }
}
