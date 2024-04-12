
import 'package:credpal/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.h),
            child: AppBar(
              backgroundColor: Color(kLight.value),
              elevation: 0,
              automaticallyImplyLeading: false,
              title: Padding(
                padding: EdgeInsets.only(left: 13.w),
                child: Text('Menu',
                  textAlign: TextAlign.center,
                  style: appstyle(16.sp, Color(kDarkText.value), FontWeight.w800),),
              ),
              centerTitle: false,
            )),
        body:
        SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/images/User.png',
                                    height: 22.h, width: 22.w,
                                  ),
                                  SizedBox(width: 8.w,),
                                  Text('Edit Profile', style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF1F1F1F),
                                      fontSize: 16.sp),),
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios, size: 16.sp, color: Color(kGrey.value),)
                            ],
                          ),
                          SizedBox(height: 18.h,),
                          Container(
                            height: 1.h, width: 366.w,
                            color: Color(0xFFD1D1E0),
                          )
                        ],
                      ),
                      SizedBox(height: 18.h,),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/images/card.png',
                                    height: 22.h, width: 22.w,
                                  ),
                                  SizedBox(width: 8.w,),
                                  Text('My Cards', style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF1F1F1F),
                                      fontSize: 16.sp),),
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios, size: 16.sp, color: Color(kGrey.value),)
                            ],
                          ),
                          SizedBox(height: 18.h,),
                          Container(
                            height: 1.h, width: 366.w,
                            color: Color(0xFFD1D1E0),
                          )
                        ],
                      ),
                      SizedBox(height: 18.h,),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/images/card.png',
                                    height: 22.h, width: 22.w,
                                  ),
                                  SizedBox(width: 8.w,),
                                  Text('Virtual Cards', style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF1F1F1F),
                                      fontSize: 16.sp),),
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios, size: 16.sp, color: Color(kGrey.value),)
                            ],
                          ),
                          SizedBox(height: 18.h,),
                          Container(
                            height: 1.h, width: 366.w,
                            color: Color(0xFFD1D1E0),
                          )
                        ],
                      ),
                      SizedBox(height: 18.h,),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/images/ic_round-power-settings-new.png',
                                    height: 22.h, width: 22.w,
                                  ),
                                  SizedBox(width: 8.w,),
                                  Text('Subscriptions', style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF1F1F1F),
                                      fontSize: 16.sp),),
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios, size: 16.sp, color: Color(kGrey.value),)
                            ],
                          ),
                          SizedBox(height: 18.h,),
                          Container(
                            height: 1.h, width: 366.w,
                            color: Color(0xFFD1D1E0),
                          )
                        ],
                      ),
                      SizedBox(height: 18.h,),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/images/gift.png',
                                    height: 22.h, width: 22.w,
                                  ),
                                  SizedBox(width: 8.w,),
                                  Text('Rewards a& Cashbacks', style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF1F1F1F),
                                      fontSize: 16.sp),),
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios, size: 16.sp, color: Color(kGrey.value),)
                            ],
                          ),
                          SizedBox(height: 18.h,),
                          Container(
                            height: 1.h, width: 366.w,
                            color: Color(0xFFD1D1E0),
                          )
                        ],
                      ),
                      SizedBox(height: 18.h,),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/images/Chat.png',
                                    height: 22.h, width: 22.w,
                                  ),
                                  SizedBox(width: 8.w,),
                                  Text('FAQs & Support', style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF1F1F1F),
                                      fontSize: 16.sp),),
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios, size: 16.sp, color: Color(kGrey.value),)
                            ],
                          ),
                          SizedBox(height: 18.h,),
                          Container(
                            height: 1.h, width: 366.w,
                            color: Color(0xFFD1D1E0),
                          )
                        ],
                      ),
                      SizedBox(height: 18.h,),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/images/Info.png',
                                    height: 22.h, width: 22.w,
                                  ),
                                  SizedBox(width: 8.w,),
                                  Text('About Us', style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF1F1F1F),
                                      fontSize: 16.sp),),
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios, size: 16.sp, color: Color(kGrey.value),)
                            ],
                          ),
                          SizedBox(height: 18.h,),
                          Container(
                            height: 1.h, width: 366.w,
                            color: Color(0xFFD1D1E0),
                          )
                        ],
                      ),
                      SizedBox(height: 18.h,),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/images/User.png',
                                    height: 22.h, width: 22.w,
                                  ),
                                  SizedBox(width: 8.w,),
                                  Text('Settings', style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF1F1F1F),
                                      fontSize: 16.sp),),
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios, size: 16.sp, color: Color(kGrey.value),)
                            ],
                          ),
                          SizedBox(height: 18.h,),
                          Container(
                            height: 1.h, width: 366.w,
                            color: Color(0xFFD1D1E0),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )

    );
  }
}

