import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_cancer_app/config/routes/app_routes.dart';
import 'package:skin_cancer_app/core/helper/exetention.dart';
import 'package:skin_cancer_app/core/utils/app_color.dart';
import 'package:skin_cancer_app/core/utils/assets_path.dart';
import 'package:skin_cancer_app/core/utils/string_manager.dart';
import 'package:skin_cancer_app/core/widgets/custom_button.dart';

class ChoseAuthFunScreen extends StatelessWidget {
  const ChoseAuthFunScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Wlecome,",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 18.sp))),
              SizedBox(
                height: 25.h,
              ),
              Center(
                child: Image(
                    image: const AssetImage(AssetsManager.chose_auth_fun),
                    width: 330.w,
                    height: 230.h),
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                StringManager.authfuntext,
                style: TextStyle(
                    color: AppColor.authfuntext,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 25.h,
              ),
              CustomButton(
                  buttoncolor: AppColor.buttonColor,
                  width: 317.w,
                  height: 61.h,
                  buttonName: StringManager.signIn,
                  onTap: () {
                    context.pushNamed(Routes.singInScreenRoutes);
                  },
                  textColor: Colors.white,
                  white: false),
              SizedBox(
                height: 25.h,
              ),
              CustomButton(
                buttoncolor: Colors.white,
                width: 317.w,
                height: 61.h,
                buttonName: StringManager.signUp,
                onTap: () {
                  context.pushNamed(Routes.singUpScreenRoutes);

                },
                textColor: AppColor.buttonColor,
                white: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
