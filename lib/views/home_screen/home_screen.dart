import 'package:smartbazar/consts/assets_url.dart';
import 'package:smartbazar/consts/consts.dart';
import 'package:smartbazar/consts/lists.dart';
import 'package:smartbazar/consts/typography.dart';
import 'package:smartbazar/views/home_screen/sections/search_field_section.dart';
import 'package:smartbazar/views/shared/custom_drop_down.dart';
import 'package:velocity_x/velocity_x.dart';

class CategoryTileDataModel {
  String? img;
  String? title;

  CategoryTileDataModel({this.title, this.img});
}

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
                padding: const EdgeInsets.all(16),
                child: Text(
                  "View by category",
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: 16,
                      fontFamily: Typo.quicksand),
                ),
              ),
              // Category Grid Section
              homeScreenCategoryGridSection(),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best Offers",
                      style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 16,
                          fontFamily: Typo.quicksand),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                          color: AppColors.blueTextColor,
                          fontSize: 16,
                          fontFamily: Typo.quicksand),
                    ),
                  ],
                ),
              ),
              Container(
                height: 410.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) => productDetailsCard(
                      weights: packageWeights, showRatingsAndSell: true),
                ),
              ),
              Image.asset(AssetsUrl.poster1),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Similar Products",
                      style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 16,
                          fontFamily: Typo.quicksand),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                          color: AppColors.blueTextColor,
                          fontSize: 16,
                          fontFamily: Typo.quicksand),
                    ),
                  ],
                ),
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(16),
                itemCount: 10,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 380.h,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemBuilder: (context, index) => productDetailsCard(
                    weights: packageWeights, showRatingsAndSell: false),
              )
            ],
          ),
        ),
      ),
    );
  }

  productDetailsCard({required List weights, showRatingsAndSell = true}) {
    String selectedweight = "";

    return Stack(
      clipBehavior: Clip.antiAlias,
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          width: 168.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3.r),
            border: Border.all(
              color: AppColors.borderColor,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                AssetsUrl.igProduct1,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Coffee",
                      style: TextStyle(
                          color: AppColors.textColor,
                          fontFamily: Typo.quicksand,
                          fontSize: 16.sp),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    showRatingsAndSell
                        ? Row(
                            children: [
                              VxRating(
                                maxRating: 5,
                                value: 3,
                                normalColor: AppColors.normalRatingColor,
                                selectionColor: AppColors.activeRatingColor,
                                isSelectable: false,
                                onRatingUpdate: (Value) {},
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "(3)",
                                style: TextStyle(
                                    color: AppColors.normalRatingColor),
                              ),
                            ],
                          )
                        : SizedBox(),
                    SizedBox(
                      height: 10.h,
                    ),
                    customDropDownField(weights),
                    SizedBox(
                      height: 10.h,
                    ),
                    showRatingsAndSell
                        ? Row(
                            children: [
                              Text(
                                "₹20",
                                style: TextStyle(
                                    color: AppColors.orangeColor,
                                    fontFamily: Typo.quicksand,
                                    fontSize: 18),
                              ),
                              Text(
                                "₹25",
                                style: TextStyle(
                                  color: AppColors.borderColor,
                                  fontFamily: Typo.quicksand,
                                  fontSize: 18,
                                ),
                              )
                            ],
                          )
                        : SizedBox(),
                    SizedBox(
                      height: 10.h,
                    ),
                    LinearProgressIndicator(
                      value: 0.4,
                      minHeight: 5,
                      borderRadius: BorderRadius.circular(50),
                      backgroundColor: AppColors.borderColor,
                      valueColor: AlwaysStoppedAnimation(
                        AppColors.greenColor,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Sold: 20/50",
                      style: TextStyle(
                        fontFamily: Typo.quicksand,
                        color: AppColors.textColor,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    FilledButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.shopping_cart,
                            size: 18,
                          ),
                          Text(
                            "Add To Cart",
                            style: TextStyle(
                                fontFamily: Typo.quicksand, fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
              color: AppColors.redColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(3.r),
                bottomRight: Radius.circular(3.r),
              )),
          child: Text(
            "Save 40%OFF",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  Container homeScreenCategoryGridSection() {
    return Container(
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
    );
  }
}
