import 'package:drink_interface_ui/drink_interface/app_constant/app_constant.dart';
import 'package:drink_interface_ui/drink_interface/screens/detail_screen/detail_screen.dart';
import 'package:flutter/material.dart';

import '../../widget/recommended_section/recommended_sectoin.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// app Bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: buildAppBar(),
              ),

              /// textfield
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: buildTextField(),
              ),

              /// recommended section
              SizedBox(
                height: 25,
              ),
              RecommendedSectoin(),
              SizedBox(
                height: 20,
              ),

              /// list view
              Container(
                height: 190,
                width: double.infinity,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreen()));
                      },
                      child: myContainer(AppImages.greenTea, 'Green Tea',
                          AppColor.kGreenTeaColor),
                    ),
                    myContainer(AppImages.jasmineTea, 'Jasmine Tea',
                        AppColor.kJasmineColor),
                    myContainer(
                        AppImages.roseTea, 'Rose Tea', AppColor.kRoseColor),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Will Buy',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    tileContainer(AppColor.kFirstTileContainer, 'Cappucci', 24,
                        AppImages.cappucci),
                    tileContainer(AppColor.kCAfeLate, 'Coffee Latte', 36,
                        AppImages.coffeLate),
                    tileContainer(Colors.pink.shade200, 'Cappucci', 24,
                        AppImages.cappucci),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container tileContainer(
      Color tileColor, String coffeeName, int price, String image) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: tileColor, borderRadius: BorderRadius.circular(20)),
                child: Image.asset(
                  image,
                  scale: 1.5,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffeeName,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Signature Product',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade400),
                  ),
                ],
              ),
              Spacer(),
              Text(
                price.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              )
            ],
          ),
        ],
      ),
    );
  }

  TextField buildTextField() {
    return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.shade200,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20)),
          hintText: 'Lemonade',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          )),
    );
  }

  Row buildAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Venus',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        Image.asset(
          AppImages.messanger,
          scale: 16,
        )
      ],
    );
  }

  Widget myContainer(String img, String coffeetype, Color color) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 12),
      height: 180,
      width: 160,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(17)),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              img,
              scale: 5,
            ),
            Text(
              coffeetype,
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
