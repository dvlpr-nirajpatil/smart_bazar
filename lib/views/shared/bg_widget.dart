import 'package:flutter/material.dart';
import 'package:smartbazar/consts/assets_url.dart';

class BgWidget extends StatelessWidget {
  BgWidget({super.key, required this.child});

  Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            AssetsUrl.igBg,
          ),
        ),
      ),
      child: child,
    );
  }
}
