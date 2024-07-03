import 'package:flutter/material.dart';
import 'package:smartbazar/consts/assets_url.dart';
import 'package:smartbazar/consts/consts.dart';
import 'package:smartbazar/consts/typography.dart';
import 'package:smartbazar/views/home_screen/sections/search_field_section.dart';
import 'package:velocity_x/velocity_x.dart';

class CategoryTileDataModel {
  String? img;
  String? title;

  CategoryTileDataModel({this.title, this.img});
}

List<CategoryTileDataModel> categories = [
  CategoryTileDataModel(title: "Fruits & Vegetables", img: AssetsUrl.igVegies),
  CategoryTileDataModel(title: "Dairy", img: AssetsUrl.igDairy),
  CategoryTileDataModel(title: "Beverages", img: AssetsUrl.igBeverages),
  CategoryTileDataModel(title: "Fruits & Vegetables", img: AssetsUrl.igVegies),
  CategoryTileDataModel(title: "Dairy", img: AssetsUrl.igDairy),
  CategoryTileDataModel(title: "Beverages", img: AssetsUrl.igBeverages),
  CategoryTileDataModel(title: "Fruits & Vegetables", img: AssetsUrl.igVegies),
  CategoryTileDataModel(title: "Dairy", img: AssetsUrl.igDairy),
  CategoryTileDataModel(title: "Beverages", img: AssetsUrl.igBeverages),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String id = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // section Search Bar
              HomeScreenSearchBarSection(),

              // section Posters
              Image.asset(AssetsUrl.poster1),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  VxSwiper(
                    viewportFraction: 1.0,
                    items: [
                      Image.asset(AssetsUrl.poster2),
                    ],
                  ),
                  Positioned(
                    bottom: 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        4,
                        (index) => Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            radius: 4,
                            backgroundColor:
                                AppColors.textColor.withOpacity(0.75),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),

              // section Categories

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "View by category",
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: 16,
                      fontFamily: Typo.quicksand),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                color: AppColors.greyBgColor,
                width: double.infinity,
                child: GridView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisExtent: 140.h,
                      mainAxisSpacing: 5.h,
                      crossAxisSpacing: 5.w),
                  children: List.generate(
                    categories.length,
                    (index) => Card(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Image.asset(
                            categories[index].img!,
                            height: 80.h,
                            width: 80.w,
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            categories[index].title!,
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
