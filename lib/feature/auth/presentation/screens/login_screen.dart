import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safe_wave/core/utils/app_assets.dart';
import 'package:safe_wave/core/utils/app_strings.dart';
import 'package:safe_wave/core/utils/commons.dart';
import 'package:safe_wave/core/widget/custom_buttom.dart';
import 'package:safe_wave/core/widget/custom_text_form_field.dart';
import 'package:safe_wave/feature/auth/presentation/cubit/log_in_cubit/log_in_cubit.dart';
import 'package:safe_wave/feature/auth/presentation/cubit/log_in_cubit/log_in_state.dart';

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
          BlocConsumer<LoginCubit, LoginState>(listener: (context, state) {
            if (state is LoginErrorState) {
              showSnackBar(context, state.errorMs, Colors.red);
            } else if (state is LoginSuccessState) {
              showSnackBar(context, 'Login Success', Colors.green);
              navigateReplacement(context: context, route: Routes.home);
            }
          }, builder: (context, state) {
            final cubit = BlocProvider.of<LoginCubit>(context);
            return state is LoginLoadingState
                ? const Center(child: CircularProgressIndicator())
                : SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.w, right: 30.w),
                      child: Form(
                        key: cubit.loginKey,
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
                              height: 35.h,
                            ),
                            CustomTextFormField(
                              controller: cubit.passwordController,
                              hintText: AppStrings.password,
                              validator: (data) {
                                if (data!.isEmpty) {
                                  return "Enter Your password";
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 40.h,
                            ),
                            GestureDetector(
                              onTap: () {
                                // navigate forget password Screen
                                navigate(
                                    context: context,
                                    route: Routes.forgetPassword);
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
                              onPressed: () async {
                                if (cubit.loginKey.currentState!.validate()) {
                                  await cubit.login();
                                  // login
                                  // navigateReplacement(
                                  //   context: context,
                                  //   route: Routes.home,
                                  // );
                                }
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
                                navigate(
                                    context: context, route: Routes.signUp);
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
                  );
          }),
        ],
      ),
    );
  }
}
