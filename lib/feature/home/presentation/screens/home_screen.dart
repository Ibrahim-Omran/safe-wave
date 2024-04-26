import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';

import '../cubit/home_cubit/home_cubit.dart';
import '../cubit/home_cubit/home_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, });

  //final Widget screens ;
  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      final cubit = BlocProvider.of<HomeCubit>(context);
      return PopScope(
        onPopInvoked: (didPop) {
          cubit.close();
        },
        child: Scaffold(
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: Stack(
              children: [

                Image.asset(
                  AppAssets.splashTwo,
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                  height: 190.h,
                ),

                Positioned(
                  bottom: 15.h,
                  right: 112.w,
                  child: InkWell(
                    onTap: (){
                      cubit.changeIndex(0);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: cubit.currentIndex == 0
                            ? Colors.black.withOpacity(0.4)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                          Icons.home,
                        size: 50.sp,
                        color: AppColors.white,

                      ),
                    ),
                  ),
                ),

                Positioned(
                  bottom: 19.h,
                  left: 20.w,
                  child: InkWell(
                    onTap: (){
                      cubit.changeIndex(4);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: cubit.currentIndex == 4
                            ? Colors.black.withOpacity(0.4)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.search,
                        size: 45.sp,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),

                Positioned(
                  bottom: 90.h,
                  left: 90.w,
                  child: InkWell(
                    onTap: (){
                      cubit.changeIndex(1);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: cubit.currentIndex == 1
                            ? Colors.black.withOpacity(0.4)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.person,
                        size: 50.sp,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),

                Positioned(
                  bottom: 117.h,
                  right: 70.w,
                  child: InkWell(
                    onTap: (){
                      cubit.changeIndex(2);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: cubit.currentIndex == 2
                            ? Colors.black.withOpacity(0.4)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.brush,
                        size: 50.sp,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),

                Positioned(
                  bottom: 70.h,
                  right: 15.w,
                  child: InkWell(
                    onTap: (){
                      cubit.changeIndex(3);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: cubit.currentIndex == 3
                            ? Colors.black.withOpacity(0.4)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.access_time,
                        size: 45.sp,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),

              ],
            ),
        ),
      );
    });
  }
}
