import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/consts/assets_url.dart';
import 'package:smartbazar/consts/colors.dart';
import 'package:smartbazar/consts/spacing.dart';
import 'package:smartbazar/consts/typography.dart';
import 'package:smartbazar/views/shared/bg_widget.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  static String id = "SignInScreen";

  @override
  Widget build(BuildContext context) {
    return BgWidget(
      child: Scaffold(
        body: Container(
          padding: Spacing.screenPadding,
          width: double.infinity,
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 112.h,
                ),
                Center(
                  child: Image.asset(
                    AssetsUrl.igPhone,
                  ),
                ),
                SizedBox(
                  height: 46.h,
                ),
                Text(
                  "Enter your mobile number",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: Typo.medium,
                    color: AppColors.textColor,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "We need to verify you. We will send you a one time verification code. ",
                  style: TextStyle(
                    color: AppColors.textColor.withOpacity(0.74),
                  ),
                ),
                SizedBox(
                  height: 28.h,
                ),
                CustomTextField(
                  hint: "Phone Number",
                  prefix: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.phone,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextField(
                  hint: "Enter Pincode",
                ),
                SizedBox(
                  height: 43.h,
                ),
                FilledButton(
                  onPressed: () {},
                  child: Text("Next"),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom * 0.1))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, this.controller, this.prefix, this.hint});

  TextEditingController? controller;
  Widget? prefix;
  String? hint;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
          color: AppColors.textFieldColor,
          borderRadius: BorderRadius.circular(8.r)),
      width: double.infinity,
      height: 52.h,
      child: Row(
        children: [
          prefix ?? const SizedBox(),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintStyle:
                    TextStyle(color: AppColors.textColor, fontSize: 16.sp),
                hintText: hint,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
