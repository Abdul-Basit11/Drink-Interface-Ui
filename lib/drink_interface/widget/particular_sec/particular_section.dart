import 'package:flutter/material.dart';

import '../../app_constant/app_constant.dart';
import '../rating_stars.dart';
import '../small_container.dart';


class ParticularSec extends StatelessWidget {
  const ParticularSec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Particulars',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'The apeciality of this shop is fresh ice cream\n with a full cup of tea.Ice cream is more\ndelicious must be yoo',
          style:
          TextStyle(fontSize: 16, color: Colors.grey),
        ),
        SizedBox(
          height: 20,
        ),
        RatingStars(),
        SizedBox(
          height: 20,
        ),
        /// small container
        Row(
          children: [
            SmallContainer(
              image: AppImages.measuringCup,
              txt: '500 ml',
            ),
            SmallContainer(
              image: AppImages.lessIceIcon,
              txt: 'Less Ice',
            ),
            SmallContainer(
              image: AppImages.candyIcon,
              txt: 'Sugar',
            ),
          ],
        ),
        SizedBox(height: 10,),
        Text(
          'Services',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        Text(
          'Business give it away for free\nMinus yun for every year',
          style:
          TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }
}
