import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:skin_cancer_app/config/routes/app_routes.dart';
import 'package:skin_cancer_app/core/utils/assets_path.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer? _timer;
  goNext() => Navigator.of(context).pushNamed(Routes.onBoardingRoutes);
  startDely() {
    _timer = Timer(const Duration(seconds: 6), () {
      goNext();
    });
  }

  @override
  void initState() {
    super.initState();
    startDely();
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           SizedBox(
            height: 150.h,
          ),
          Lottie.asset(AssetsManager.cancerSplash),
        ],
      ),
    );
  }
}
