import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safe_wave/core/utils/app_assets.dart';
import 'package:safe_wave/core/utils/app_strings.dart';
import 'package:safe_wave/core/utils/commons.dart';
import 'package:safe_wave/core/widget/custom_buttom.dart';
import 'package:safe_wave/core/widget/custom_text_form_field.dart';

import '../../../../core/routes/app_routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              AppAssets.splashFour,
              fit: BoxFit.fitWidth,
              width: double.infinity,
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  Image.asset(
                    AppAssets.appLogoTwo,
                    height: 300.h,
                  ),
                  SizedBox(
                    height: 140.h,
                  ),
                  CustomTextFormField(
                    controller: TextEditingController(),
                    hintText: AppStrings.email,
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  CustomTextFormField(
                    controller: TextEditingController(),
                    hintText: AppStrings.password,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      // navigate forget password Screen
                      navigate(context: context, route: Routes.forgetPassword);
                    },
                    child: Text(
                      AppStrings.forgetPassword,
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontSize: 20.sp),
                    ),
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  CustomButton(
                    width: 260.w,
                    onPressed: () {
                      // login
                      navigateReplacement(
                        context: context,
                        route: Routes.home,
                      );
                    },
                    text: AppStrings.login,
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  Text(
                    AppStrings.or,
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 20.sp),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      // navigate to Register Screen
                      navigate(context: context, route: Routes.signUp);
                    },
                    child: Text(
                      AppStrings.register,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(fontSize: 27.sp),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
