import 'package:drink_interface_ui/drink_interface/app_constant/app_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/particular_sec/particular_section.dart';
import '../../widget/rating_stars.dart';
import '../../widget/small_container.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kButtonBgColor,
      body: SafeArea(
        child: Column(
          children: [
            buildPadding(context),
            Expanded(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 60, left: 20),
                          width: double.infinity,
                          height: MediaQuery
                              .of(context)
                              .size
                              .height * 0.47,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(40))),
                          child: SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: ParticularSec(),
                          ),
                        ),
                        Align(
                            alignment: Alignment.topRight,
                            child: Image.asset(
                              AppImages.greenTea,
                              scale: 1.5,
                            ))
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 75,),
                          Text(
                            'Green Tea',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Signature Product',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '36',
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
                color: Colors.grey,

              ),
              label: 'Home'
          ), BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.heart,
                color: Colors.grey,

              ),
              label: 'Home'
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
              icon: MaterialButton(
                 elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                color: AppColor.kButtonBgColor,
                onPressed: (){},
                child: Text('Purchased',
                  style: TextStyle(
                       fontWeight: FontWeight.bold,color: Colors.white),),
              ),
              label: ''
          )
        ],
      ),
    );
  }

  Padding buildPadding(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(

            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          Image.asset(
            AppImages.shoppingCart,
            scale: 15,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
