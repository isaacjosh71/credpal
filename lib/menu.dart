
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
  // bool circular = true;
  // NetworkHandle networkHandle = NetworkHandle();
  // Data data = Data();
  //
  // @override
  // void initState() {
  //   fetchProfile();
  //   super.initState();
  // }
  //
  // void fetchProfile() async{
  //   var response = await networkHandle.get('/patient/profile');
  //   setState((){
  //     data = Data.fromJson(jsonDecode(response));
  //     circular = false;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.h),
            child: AppBar(
              backgroundColor: Color(kLight.value),
              elevation: 0,
              automaticallyImplyLeading: false,
              leadingWidth: 32.w,
              leading: Text('Menu',
                textAlign: TextAlign.center,
                style: appstyle(16.sp, Color(kDarkText.value), FontWeight.w800),),
            )),
        body:
        SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 19.w, top: 15.h, bottom: 15.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Image.asset(
                        //   'assets/svg/person.svg',
                        //   height: 22.h, width: 22.w,
                        // ),
                        // SizedBox(width: 8.w,),
                        Text('Edit Profile', style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF1F1F1F),
                            fontSize: 16.sp),)
                      ],
                    ),
                    GestureDetector(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SvgPicture.asset(
                          //   'assets/svg/person.svg',
                          //   height: 22.h, width: 22.w,
                          // ),
                          // SizedBox(width: 8.w,),
                          Text('My Cards', style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF1F1F1F),
                              fontSize: 16.sp),)
                        ],
                      ),
                    ),
                    SizedBox(height: 44.h,),
                    GestureDetector(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SvgPicture.asset(
                          //   'assets/svg/moneys.svg',
                          //   height: 22.h, width: 22.w,
                          // ),
                          // SizedBox(width: 8.w,),
                          Text('Virtual card', style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF1F1F1F),
                              fontSize: 16.sp),)
                        ],
                      ),
                    ),
                    SizedBox(height: 44.h,),
                    GestureDetector(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SvgPicture.asset(
                          //   'assets/svg/bell.svg',
                          //   height: 22.h, width: 22.w,
                          // ),
                          // SizedBox(width: 8.w,),
                          Text('Subscription', style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF1F1F1F),
                              fontSize: 16.sp),)
                        ],
                      ),
                    ),
                    SizedBox(height: 44.h,),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SvgPicture.asset(
                          //   'assets/svg/password.svg',
                          //   height: 22.h, width: 22.w,
                          // ),
                          // SizedBox(width: 8.w,),
                          Text('FAQ & Support', style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF1F1F1F),
                              fontSize: 16.sp),)
                        ],
                      ),
                    ),
                    SizedBox(height: 44.h,),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SvgPicture.asset(
                          //   'assets/svg/help.svg',
                          //   height: 22.h, width: 22.w,
                          // ),
                          // SizedBox(width: 8.w,),
                          Text('About Us', style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF1F1F1F),
                              fontSize: 16.sp),)
                        ],
                      ),
                    ),
                    SizedBox(height: 44.h,),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SvgPicture.asset(
                          //   'assets/svg/about.svg',
                          //   height: 22.h, width: 22.w,
                          // ),
                          // SizedBox(width: 8.w,),
                          Text('Settings', style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF1F1F1F),
                              fontSize: 16.sp),)
                        ],
                      ),
                    ),
                    SizedBox(height: 150.h,),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 50.h, width: 366.w,
                        decoration: BoxDecoration(
                          color: Color(0xFFFE2B5E).withOpacity(0.15),
                          borderRadius: BorderRadius.all(Radius.circular(2.r))
                        ),
                        child: Center(child: Text('Sign Out', style: appstyle(16.sp, Color(0xFFFF5959), FontWeight.w900),)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )

    );
  }
}

