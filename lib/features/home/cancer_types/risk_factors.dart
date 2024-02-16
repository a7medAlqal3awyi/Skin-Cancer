import 'package:flutter/material.dart';
import 'package:skin_cancer_app/features/home/widget/cancer_type_widget.dart';

class RiskFactorsScreen extends StatelessWidget {
  const RiskFactorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CancerTypesWidgets(
        cancerType: "Risk Factors",
        imagePath: "assets/image/risk_factors.png",
        info:
            'A risk factor is anything that increases your likelihood of developing a disease like cancer. When it comes to skin cancer risk factors, there are several that can contribute to the development of this disease. Fortunately, many of these risks can be addressed by you.');
  }
}
