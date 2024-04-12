
import 'package:credpal/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Cards extends StatefulWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  PageController pageController = PageController(viewportFraction: 0.94.sp);

  List cardDetails = [
    {
      'title': 'Cash Balance',
      'amount':'N680,100',
      'bank':'Wema Bank',
      'account':'8550001259',
      'color': const Color(0xFF274FED),
    },{
      'title': 'Credit Balance',
      'amount':'N125,000',
      'bank':'Repay',
      'account':'Aug 27',
      'color': const Color(0xFF5353BB),
    },
  ];

  @override
  void initState(){
    super.initState();
    pageController.initialPage;
  }

  @override
  void dispose(){
    super.dispose();
    pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 132.h,
      child: PageView.builder(
          itemCount: cardDetails.length,
          controller: pageController,
          itemBuilder: (BuildContext context, int index){
            return Container(
              height: 132.h,
              width: 324.w,
              margin: EdgeInsets.only(right: 19.w),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: cardDetails[index]['color'],
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 17.h, horizontal: 21.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(cardDetails[index]['title'], style: appstyle(10.sp, Color(kLight.value), FontWeight.w400),),
                    SizedBox(height: 2.h,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Text(cardDetails[index]['amount'], style: appstyle(16.sp, Color(kLight.value), FontWeight.w700),),
                       Container(height: 40.h, width: 120.w,
                       decoration: BoxDecoration(color: Color(kLight.value), borderRadius: BorderRadius.all(Radius.circular(5.r))),
                         child: Center(child: Text('Add Money', style: appstyle(13.sp, const Color(0xFF20205E), FontWeight.w500),),),
                       )
                      ],
                    ),
                    SizedBox(height: 5.h,),
                    Text(cardDetails[index]['bank'], style: appstyle(11.sp, Color(kLight.value), FontWeight.w500),),
                    SizedBox(height: 2.h,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(cardDetails[index]['account'], style: appstyle(11.sp, Color(kLight.value), FontWeight.w500),),
                            SizedBox(width: 15.w,),
                            Image.asset('assets/images/paste.png', width: 12.w, height: 12.h,)
                          ],
                        ),
                        Text('+20% interest', style: appstyle(11.sp, Color(kLight.value), FontWeight.w500),),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
