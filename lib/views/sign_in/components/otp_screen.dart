import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:smartbazar/consts/consts.dart';
import 'package:smartbazar/consts/typography.dart';
import 'package:smartbazar/views/home/home.dart';

class OtpVerificationWidget extends StatelessWidget {
  OtpVerificationWidget({super.key, this.onPress});

  Function? onPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Enter Verification Code",
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
          "We have sent SMS to:",
          style: TextStyle(
            color: AppColors.textColor.withOpacity(0.74),
          ),
        ),
        Text(
          "+91XXXXXXXXXX",
          style: TextStyle(
            fontSize: 16,
            fontFamily: Typo.semiBold,
            color: AppColors.textColor,
          ),
        ),
        SizedBox(
          height: 28.h,
        ),
        Pinput(
          length: 6,
        ),
        SizedBox(
          height: 31.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Resend OTP",
              style: TextStyle(color: AppColors.orangeColor),
            ),
            GestureDetector(
              onTap: () {
                onPress!();
              },
              child: Text(
                "Change Phone Number",
                style: TextStyle(color: AppColors.textColor.withOpacity(0.72)),
              ),
            )
          ],
        ),
        SizedBox(
          height: 49.h,
        ),
        FilledButton(
            onPressed: () {
              GoRouter.of(context).goNamed(Home.id);
            },
            child: Text("Next"))
      ],
    );
  }
}
