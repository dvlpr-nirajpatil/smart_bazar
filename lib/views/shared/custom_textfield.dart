import 'package:smartbazar/consts/consts.dart';

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
