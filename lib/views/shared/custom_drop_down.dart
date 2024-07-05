import 'package:smartbazar/consts/consts.dart';

DropdownButtonFormField<dynamic> customDropDownField(List<dynamic> weights) {
  return DropdownButtonFormField(
    hint: Text(
      weights[0],
      style: TextStyle(fontSize: 12),
    ),
    icon: Icon(
      Icons.expand_more,
      color: AppColors.borderColor,
    ),
    dropdownColor: Colors.white,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.greenColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.borderColor),
      ),
      isDense: true,
    ),
    isExpanded: true,
    items: weights
        .map<DropdownMenuItem>((value) => DropdownMenuItem(
              child: Text(
                value,
                style: TextStyle(fontSize: 12),
              ),
              value: value,
            ))
        .toList(),
    onChanged: (value) {},
  );
}
