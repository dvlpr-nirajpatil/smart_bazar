// FLUTTER SDK VERSION : 3.22.2
// DATE : 2 july 2024
// DEVELOPER : NIRAJ PATIL

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/consts/app_routes.dart';
import 'package:smartbazar/consts/colors.dart';
import 'package:smartbazar/consts/typography.dart';

void main() {
  runApp(SmartBazar());
}

class SmartBazar extends StatelessWidget {
  const SmartBazar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp.router(
        theme: ThemeData(
            filledButtonTheme: FilledButtonThemeData(
              style: FilledButton.styleFrom(
                textStyle: TextStyle(fontSize: 16.sp, fontFamily: Typo.medium),
                minimumSize: Size(double.infinity, 48.h),
                backgroundColor: AppColors.greenColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ),
            scaffoldBackgroundColor: Colors.transparent,
            fontFamily: Typo.regular),
        debugShowCheckedModeBanner: false,
        routerConfig: AppRoutes.router,
      ),
    );
  }
}
