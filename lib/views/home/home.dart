import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/consts/assets_url.dart';
import 'package:smartbazar/consts/consts.dart';
import 'package:smartbazar/views/cart/cart_screen.dart';
import 'package:smartbazar/views/categories/category_screen.dart';
import 'package:smartbazar/views/home_screen/home_screen.dart';
import 'package:smartbazar/views/menu/menu_screen.dart';
import 'package:smartbazar/views/shared/bg_widget.dart';

class Home extends StatefulWidget {
  Home({super.key});

  static String id = "Home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedScreenIndex = 0;

  List<String> bottomAppBarIcons = [
    AssetsUrl.icHome,
    AssetsUrl.icCategory,
    AssetsUrl.icCart,
    AssetsUrl.icMenu,
  ];

  List<Widget> screens = [
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    MenuScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BgWidget(
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 118.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              bottomAppBarIcons.length,
              (index) => GestureDetector(
                onTap: () {
                  selectedScreenIndex = index;
                  setState(() {});
                },
                child: Container(
                  padding: EdgeInsets.all(16.w),
                  decoration: BoxDecoration(
                      color: selectedScreenIndex == index
                          ? AppColors.greenColor
                          : Colors.white,
                      shape: BoxShape.circle),
                  child: SvgPicture.asset(
                    bottomAppBarIcons[index],
                    color: index == selectedScreenIndex
                        ? Colors.white
                        : AppColors.textColor,
                    width: 20.w,
                  ),
                ),
              ),
            ),
          ),
        ),
        body: screens[selectedScreenIndex],
      ),
    );
  }
}
