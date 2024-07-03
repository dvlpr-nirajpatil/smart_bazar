import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/consts/colors.dart';
import 'package:smartbazar/consts/typography.dart';
import 'package:smartbazar/views/shared/custom_textfield.dart';

class MobileNumberField extends StatelessWidget {
  MobileNumberField({super.key, this.onPress});

  Function? onPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          onPressed: () {
            onPress!();
          },
          child: Text("Next"),
        ),
      ],
    );
  }
}
