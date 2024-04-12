import 'package:credpal/utilities.dart';
import 'package:credpal/widgets/cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List options = [
    {
      'img': 'assets/images/transfer.png',
      'text':'N680,100',
    },
    {
      'img': 'assets/images/airtime.png',
      'text':'N680,100',
    },
    {
      'img': 'assets/images/plane.png',
      'text':'N680,100',
    },
    {
      'img': 'assets/images/love.png',
      'text':'N680,100',
    }
  ];

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
            leading: Text('Hi, Olorunfemi',
              textAlign: TextAlign.center,
              style: appstyle(16.sp, Color(kDarkText.value), FontWeight.w800),),
            actions: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 40.r,
                    child: SvgPicture.asset('assets/svg/Frame 37694.svg'),
                  ),
                  CircleAvatar(
                    radius: 40.r,
                    child: SvgPicture.asset('assets/svg/Vector.svg'),
                  ),
                ],
              )
            ],
            centerTitle: true,
          )),
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Cards(),
            SizedBox(height: 30.h,),
            SizedBox(
              height: 76.h,
              child: ListView.builder(
                  physics: const ScrollPhysics(),
                  itemCount: options.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return Container(
                      height: 75.h, width: 80.w,
                      decoration: BoxDecoration(
                        color: Color(kGreyLight.value),
                        borderRadius: BorderRadius.all(Radius.circular(6.r))
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Image.asset(options[index]['img'], width: 25.w,height: 25.h,),
                            SizedBox(height: 3.h,),
                            Text(options[index]['text'], style: appstyle(10.sp, Color(kDarkText.value), FontWeight.w600),)
                          ],
                        ),
                      ),
                    );
                  }),),
            SizedBox(height: 30.h,),
            Container(
              height: 33.h, width: 365.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.r)),
                color: Color(kGreyLight.value),
              ),
              child: Padding(padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 13.w),
              child: Row(
                children: [
                  SvgPicture.asset('assets/svg/icon.svg', width: 16.sp, height: 18.sp,),
                  SizedBox(width: 2.w,),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(text: 'Save & invest',
                          style: appstyle(10.sp, Colors.blue, FontWeight.w500),),
                        TextSpan(text: ' more to unlock higher credit limit & 0% interest',
                          style: appstyle(10.sp, Color(kDark.value), FontWeight.w500),),
                      ],
                    ),),
                ],
              ),
              ),
            ),

          ],
        ),
        ),
      )),
    );
  }
}