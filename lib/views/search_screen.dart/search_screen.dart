import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/consts/assets_url.dart';
import 'package:smartbazar/consts/colors.dart';
import 'package:smartbazar/consts/consts.dart';
import 'package:smartbazar/consts/lists.dart';
import 'package:smartbazar/consts/typography.dart';
import 'package:smartbazar/views/search_screen.dart/states/error_state.dart';
import 'package:smartbazar/views/search_screen.dart/states/result_state.dart';
import 'package:smartbazar/views/search_screen.dart/states/search_state.dart';
import 'package:smartbazar/views/shared/custom_drop_down.dart';

enum States { search, result, error }

List<String> recommendations = [
  "Fresh Grocery",
  "Banana",
  "Cheetos",
  "Vegitables",
  "Discounted Items",
  "Fresh Vegitables",
  "Fruits",
];

class SearchScreen extends StatefulWidget {
  SearchScreen({super.key});

  static String id = "Search Screen";

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _searchField = TextEditingController();

  States currentState = States.search;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        title: TextField(
          onSubmitted: (value) {
            if (value.toLowerCase() == 'milk') {
              currentState = States.result;
              setState(() {});
            } else if (value.toLowerCase() == "") {
              currentState = States.search;
              setState(() {});
            } else {
              currentState = States.error;
              setState(() {});
            }
          },
          controller: _searchField,
          decoration: InputDecoration(
            label: Text(
              "Search",
              style: TextStyle(color: AppColors.greenColor),
            ),
            prefixIcon: Icon(
              Icons.search,
            ),
            fillColor: AppColors.searchFieldColor,
            filled: true,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.greenColor,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: AppColors.greenColor,
              ),
            ),
          ),
        ),
      ),
      body: currentState == States.search
          ? searchState()
          : currentState == States.result
              ? SearchScreenResultState()
              : SearchScreenNoResultState(),
    );
  }
}
