import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:smartbazar/consts/assets_url.dart';
import 'package:smartbazar/consts/colors.dart';
import 'package:smartbazar/consts/spacing.dart';
import 'package:smartbazar/consts/typography.dart';
import 'package:smartbazar/views/shared/bg_widget.dart';
import 'package:smartbazar/views/sign_in/components/mobile_number_field.dart';
import 'package:smartbazar/views/sign_in/components/otp_screen.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({super.key});

  static String id = "SignInScreen";

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _showOtpScreen = false;

  void goToOtpScreen() {
    _showOtpScreen = true;
    setState(() {});
  }

  void goToMobileNumberScreen() {
    _showOtpScreen = false;
    setState(() {});
  }

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
                _showOtpScreen
                    ? OtpVerificationWidget(
                        onPress: goToMobileNumberScreen,
                      )
                    : MobileNumberField(
                        onPress: goToOtpScreen,
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
