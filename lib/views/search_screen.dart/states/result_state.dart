import 'package:smartbazar/consts/assets_url.dart';
import 'package:smartbazar/consts/consts.dart';
import 'package:smartbazar/consts/lists.dart';
import 'package:smartbazar/consts/typography.dart';
import 'package:smartbazar/views/search_screen.dart/search_screen.dart';
import 'package:smartbazar/views/shared/custom_drop_down.dart';

class SearchScreenResultState extends StatelessWidget {
  const SearchScreenResultState({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search Result",
                style: TextStyle(fontFamily: Typo.medium, fontSize: 20),
              ),
              Icon(Icons.filter_list),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                recommendations.length,
                (index) => Container(
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.borderColor),
                      borderRadius: BorderRadius.circular(9.r)),
                  child: Text(
                    recommendations[index],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: AppColors.borderColor,
              ),
              itemCount: 10,
              itemBuilder: (context, index) => ProductDetailsCardWidget(
                discount: index == 1 ? "30" : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductDetailsCardWidget extends StatefulWidget {
  ProductDetailsCardWidget({super.key, this.discount});
  String? discount;
  @override
  State<ProductDetailsCardWidget> createState() =>
      _ProductDetailsCardWidgetState();
}

class _ProductDetailsCardWidgetState extends State<ProductDetailsCardWidget> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                width: 121,
                height: 115,
                child: Image.asset(
                  AssetsUrl.igProduct1,
                ),
              ),
              widget.discount != null
                  ? Positioned(
                      top: -10,
                      child: CircleAvatar(
                        backgroundColor: AppColors.orangeColor,
                        radius: 30,
                        child: Center(
                            child: Text(
                          "20% OFF",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        )),
                      ),
                    )
                  : SizedBox()
            ],
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  "Arla DANO Full Cream Milk Powder Instant",
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontFamily: Typo.medium,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 10.h,
                ),
                customDropDownField(packageWeights),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Text(
                      "₹182",
                      style: TextStyle(
                        color: AppColors.orangeColor,
                        fontFamily: Typo.semiBold,
                        fontSize: 20,
                      ),
                    ),
                    Expanded(child: Container()),
                    GestureDetector(
                      onTap: () {
                        isFav = !isFav;
                        setState(() {});
                      },
                      child: Icon(
                        isFav ? Icons.favorite : Icons.favorite_outline,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FilledButton(
                      style: FilledButton.styleFrom(minimumSize: Size(90, 35)),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.shopping_cart,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Add")
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
