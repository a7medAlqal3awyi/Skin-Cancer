import 'package:flutter/material.dart';
import 'package:skin_cancer_app/core/helper/exetention.dart';
import 'package:skin_cancer_app/core/helper/spacing.dart';
import 'package:skin_cancer_app/features/home/widget/hi_container.dart';
import 'package:skin_cancer_app/features/home/widget/learnig_center.dart';
import 'package:skin_cancer_app/features/home/widget/row_of_icon_text_arrow.dart';

import '../../core/routing/app_routes.dart';
import 'widget/text_with_ai.dart';
import 'widget/what_skin_cancer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            const HiContainer(),
            verticalSpacing(14),
            const TestWithAi(),
            verticalSpacing(14),
            const WhatSkinCancer(),
            verticalSpacing(14),
            const LearningCenter(),
            RowOfIconTextArrow(
              text: "Skin Cancer Facts and Statistics",
              onTap: () {
                context.pushNamed(Routes.cancerFactsScreen);
              },
            ),
            RowOfIconTextArrow(
              text: "Risk Factors",
              onTap: () {
                context.pushNamed(Routes.riskFactorsScreen);
              },
            ),
            RowOfIconTextArrow(text: "Prevention",
              onTap: () {
                context.pushNamed(Routes.skinCancerPreventionScreen);
              },
            ),
            RowOfIconTextArrow(
                text: "Early Detection", iconPath: "assets/image/alarm.png",
            onTap: (){
                  context.pushNamed(Routes.earlyDetectionScreen);
            }),
          ]),
        ),
      ),
    );
  }
}
