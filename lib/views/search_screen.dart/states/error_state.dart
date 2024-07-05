import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/consts/assets_url.dart';
import 'package:smartbazar/consts/consts.dart';
import 'package:smartbazar/consts/typography.dart';

class SearchScreenNoResultState extends StatelessWidget {
  const SearchScreenNoResultState({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 80.h,
          ),
          SvgPicture.asset(
            AssetsUrl.igNoResult,
          ),
          SizedBox(height: 30.h),
          Text(
            "Opps! We can’t find your product!",
            style: TextStyle(fontSize: 16, fontFamily: Typo.medium),
          ),
        ],
      ),
    );
  }
}
