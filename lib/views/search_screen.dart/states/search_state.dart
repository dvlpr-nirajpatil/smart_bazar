import 'package:smartbazar/consts/consts.dart';
import 'package:smartbazar/consts/typography.dart';
import 'package:smartbazar/views/search_screen.dart/search_screen.dart';

class searchState extends StatelessWidget {
  const searchState({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recommendations",
                style: TextStyle(fontSize: 18, fontFamily: Typo.semiBold),
              ),
              Text(
                "clear",
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: Typo.medium,
                    color: AppColors.blueTextColor),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Wrap(
            runSpacing: 10,
            spacing: 10,
            alignment: WrapAlignment.start,
            children: List.generate(
              recommendations.length,
              (index) => Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: AppColors.textFieldColor,
                ),
                child: Text(
                  recommendations[index],
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Discover more",
                style: TextStyle(fontSize: 18, fontFamily: Typo.semiBold),
              ),
              Text(
                "clear",
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: Typo.medium,
                    color: AppColors.blueTextColor),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Wrap(
            runSpacing: 10,
            spacing: 10,
            alignment: WrapAlignment.start,
            children: List.generate(
              recommendations.length,
              (index) => Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: AppColors.textFieldColor,
                ),
                child: Text(
                  recommendations[index],
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
