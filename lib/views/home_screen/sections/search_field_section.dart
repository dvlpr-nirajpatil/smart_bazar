import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:smartbazar/consts/assets_url.dart';
import 'package:smartbazar/consts/colors.dart';
import 'package:smartbazar/consts/typography.dart';
import 'package:smartbazar/views/search_screen.dart/search_screen.dart';

class HomeScreenSearchBarSection extends StatelessWidget {
  const HomeScreenSearchBarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: AppColors.greenColor,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Utkarsh Bazar",
                style: TextStyle(
                    color: Colors.white, fontSize: 20, fontFamily: Typo.medium),
              ),
              Image.asset(AssetsUrl.icProfile)
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          GestureDetector(
            onTap: () {
              context.goNamed(SearchScreen.id);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 44.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.r),
                  topRight: Radius.circular(8.r),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(color: AppColors.greenColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
