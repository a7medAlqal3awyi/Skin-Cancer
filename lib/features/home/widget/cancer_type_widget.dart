import 'package:flutter/material.dart';
import 'package:skin_cancer_app/core/helper/spacing.dart';
import 'package:skin_cancer_app/core/utils/text_styles.dart';

class CancerTypesWidgets extends StatelessWidget {
  final String cancerType;
  final String imagePath;
  final String info;

  const CancerTypesWidgets(
      {super.key,
      required this.cancerType,
      required this.imagePath,
      required this.info});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                verticalSpacing(30),
                Text(
                  cancerType,
                  style: TextStyles.font22MoveW700,
                ),
                verticalSpacing(20),
                Image.asset(imagePath),
                verticalSpacing(20),
                Text(info, style: TextStyles.font17BlackW500)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
