import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skin_cancer_app/core/utils/text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 192.h,
            color: const Color(0xFFD6D9F4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("hi ahmed".toUpperCase(),
                style: TextStyles.font20GreyW700,),
                SvgPicture.asset("assets/image/home.svg")
              ],
            ),
          )
        ],
      ),
    );
  }
}
