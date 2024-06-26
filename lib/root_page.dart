
import 'package:credpal/utilities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'home.dart';
import 'menu.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: getTabs(),
      body: IndexedStack(
        index: pageIndex,
        children: [
          const Home(),
          Container(),
          Container(),
          Container(),
          const Menu(),
        ],
      ),
    );
  }

  Widget getTabs(){
    List bottomNavigation = [
      'assets/svg/home.svg',
      'assets/svg/shop.svg',
      'assets/svg/shopping-bag.svg',
      'assets/svg/wallet-3.svg',
      'assets/svg/element-3.svg',
    ];

    List pages = [
      'Home',
      'Shopping',
      'Invest',
      'Payment',
      'Menu',
    ];
    return Container(
      width: double.infinity,
      height: 67.h,
      decoration: BoxDecoration(
        color: Color(kLight.value),
      ),
      child: Padding(
        padding:  EdgeInsets.only(
          top: 10.h,
          left: 24.w,
          right: 24.w,
           bottom: 7.h
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(bottomNavigation.length,
                (index) => InkWell(
              onTap: (){
                setState(() {
                  pageIndex = index;
                });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    bottomNavigation[index],
                    height: 30.h, width: 30.w,
                    color: pageIndex == index ?
                    const Color(0xFF1A1A1A) : null,
                  ),
                  SizedBox(height: 5.h,),
                  Text(pages[index], style:
                  TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w500, color:  pageIndex == index ? const Color(0xFF1A1A1A) : null,))
                ],
              ),
            ),),
        ),
      ),
    );
  }
}

