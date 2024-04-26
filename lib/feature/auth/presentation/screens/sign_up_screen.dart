import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safe_wave/feature/auth/presentation/cubit/sign_up_cubit/sign_up_cubit.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widget/custom_buttom.dart';
import '../../../../core/widget/custom_text_form_field.dart';
import '../cubit/sign_up_cubit/sign_up_state.dart';

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
          BlocBuilder<SignUpCubit, SignUpState>(builder: (context, state) {
            final cubit = BlocProvider.of<SignUpCubit>(context);
            return state is LoadingState
                ? const Center(child: CircularProgressIndicator())
                : SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.w, right: 30.w),
                      child: Form(
                        key: cubit.signUpKey,
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
                              controller: cubit.emailController,
                              hintText: AppStrings.email,
                              validator: (data) {
                                if (data!.isEmpty ||
                                    !data.contains('@gmail.com')) {
                                  return "Enter Your Email";
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            CustomTextFormField(
                              controller: cubit.nameController,
                              hintText: AppStrings.userName,
                              validator: (data) {
                                if (data!.isEmpty) {
                                  return "Enter Your Name";
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            CustomTextFormField(
                              controller: cubit.passwordController,
                              hintText: AppStrings.password,
                              validator: (data) {
                                if (data!.isEmpty) {
                                  return "Enter Your Password";
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            CustomTextFormField(
                              controller: cubit.confirmPasswordController,
                              hintText: AppStrings.confirmPassword,
                              validator: (data) {
                                if (cubit.passwordController.text !=
                                    cubit.confirmPasswordController.text) {
                                  return "Enter Your Confirm Password";
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 35.h,
                            ),
                            CustomButton(
                              width: 260.w,
                              text: AppStrings.signUp,
                              onPressed: () async {
                                // sign up
                                if (cubit.signUpKey.currentState!.validate()) {
                                  // Save Data && Go To Home Screen
                                  await cubit.signUp();
                                }
                              },
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
                  );
          }),
        ],
      ),
    );
  }
}
