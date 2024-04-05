import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widget/custom_buttom.dart';
import '../../../../core/widget/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                    height: 120.h,
                  ),

                  CustomTextFormField(
                    controller: TextEditingController(),
                    hintText: AppStrings.email,
                  ),

                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextFormField(
                    controller: TextEditingController(),
                    hintText: AppStrings.userName,
                  ),

                  SizedBox(
                    height: 20.h,
                  ),

                  CustomTextFormField(
                    controller: TextEditingController(),
                    hintText: AppStrings.password,
                  ),

                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextFormField(
                    controller: TextEditingController(),
                    hintText: AppStrings.confirmPassword,
                  ),
                  SizedBox(
                    height: 35.h,
                  ),

                  CustomButton(
                    width: 260.w,
                    onPressed: () {},
                    text: AppStrings.signUp,
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
                    onTap: (){
                      // navigate to login Screen
                      Navigator.pop(context);

                    },
                    child: Text(
                      AppStrings.login,
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
