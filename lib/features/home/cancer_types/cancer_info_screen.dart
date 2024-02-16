import 'package:flutter/material.dart';
import 'package:skin_cancer_app/features/home/widget/cancer_type_widget.dart';

class CancerInfoScreen extends StatelessWidget {
  const CancerInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CancerTypesWidgets(
      cancerType: "What is Skin Caner?",
      imagePath: "assets/image/cancer.png",
      info:
          "Skin cancer is the out-of-control growth of abnormal cells in the epidermis, the outermost skin layer, caused by unrepaired DNA damage that triggers mutations. These mutations lead the skin cells to multiply rapidly and form malignant tumors. The main types of skin cancer are basal cell carcinoma (BCC), squamous cell carcinoma (SCC), melanoma and Merkel cell carcinoma (MCC).",
    );
  }
}
