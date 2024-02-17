import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_cancer_app/core/helper/exetention.dart';
import 'package:skin_cancer_app/core/helper/spacing.dart';
import 'package:skin_cancer_app/core/utils/text_styles.dart';

import 'widget/profiel_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 227.h,
                    width: 407.w,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(120.w),
                        bottomRight: Radius.circular(120.w),
                      ),
                    ),
                    child: Image.network(
                      "https://img.freepik.com/free-photo/flag-palestine_1401-194.jpg?w=900&t=st=1708155765~exp=1708156365~hmac=c31846e586352c92ff90119f932efdb71514440d5084d57e8b4b56d8a4bce3f9",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 70.h,
                    left: 20.w,
                    child: InkWell(
                      onTap: () {
                        context.pop();
                      },
                      child: Container(
                        height: 42.h,
                        width: 42.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: const Color(0xFFC1C6F6).withOpacity(.8),
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        padding: EdgeInsets.only(left: 8.w),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xFF424DC1),
                          size: 24.0, // Adjust the size as needed
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 150.h,
                    left: MediaQuery.of(context).size.width / 4.w,
                    child: CircleAvatar(
                      radius: 80.r,
                      backgroundImage: const NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBzf7cFeoQKyzf9yW2Zm27Yoll6APvj18sC2yGmC5uZjB0fCAgNV05jP4gyEcNyknBoGI&usqp=CAU',
                      ),
                    ),
                  ),
                  Positioned(
                      top: 290.h,
                      left: 175.w,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.add,
                          size: 28,
                          color: Color(0xFF424ECA),
                        ),
                      )),
                ],
              ),
              verticalSpacing(110.h),
              Text(
                "Abo Abida",
                style: TextStyles.font20BlackW700
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              verticalSpacing(10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: const Column(
                  children: [
                    ProfileWidget(
                      leading: Icon(color: Color(0xFF6671EB), Icons.person),
                      title: 'Your profile',
                    ),
                    ProfileWidget(
                      leading:
                          Icon(color: Color(0xFF6671EB), Icons.calendar_month),
                      title: 'Appointments',
                    ),
                    ProfileWidget(
                      leading: Icon(color: Color(0xFF6671EB), Icons.favorite),
                      title: 'Favorites',
                    ),
                    ProfileWidget(
                      leading: Icon(
                          color: Color(0xFF6671EB),
                          Icons.local_hospital_rounded),
                      title: 'My Clinic',
                    ),
                    ProfileWidget(
                      leading:
                          Icon(color: Color(0xFF6671EB), Icons.credit_card),
                      title: 'Payment Method',
                    ),
                    ProfileWidget(
                      leading: Icon(
                          color: Color(0xFF6671EB), Icons.lock_outline_rounded),
                      title: 'Log out',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
