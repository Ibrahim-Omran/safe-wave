import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safe_wave/core/utils/app_strings.dart';

import '../core/routes/app_routes.dart';
import '../core/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      builder: (context,state){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppStrings.safeWave,
          theme: getAppTheme(),
          initialRoute: Routes.intitlRoute,
          onGenerateRoute: AppRoutes.generateRoute,
        );
      },
    );
  }
}
