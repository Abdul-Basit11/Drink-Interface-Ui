
import 'package:flutter/material.dart';

import '../../app_constant/app_constant.dart';

class RecommendedSectoin extends StatefulWidget {
  const RecommendedSectoin({Key? key}) : super(key: key);

  @override
  State<RecommendedSectoin> createState() => _RecommendedSectoinState();
}

class _RecommendedSectoinState extends State<RecommendedSectoin> {
  int selectedIndex = 0;
  final List categories = [
    'Recommended',
    'Black Tea',
    'Green Tea',
    'Coffee Late',
  ];
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(left: 20),
      width: double.infinity,
      height: 45,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                setState((){
                  selectedIndex=index;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    categories[index],
                    style: TextStyle(
                      fontSize: 18,
                      color: selectedIndex == index
                          ? AppColor.kTextColor
                          : Colors.black,
                    ),
                  ),
                  Container(
                      height: 4,
                      width: 50,
                      color:selectedIndex == index
                          ? AppColor.kTextColor
                          : null
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, i) {
            return SizedBox(
              width: 15,
            );
          },
          itemCount: categories.length),
    );
  }
}
