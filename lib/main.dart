import 'package:flutter/material.dart';

import 'app/my_app.dart';
import 'core/routing/app_routes.dart';

void main() {
  runApp(
    MyApp(
      appRouter: AppRouter(),
    ),
  );
}
