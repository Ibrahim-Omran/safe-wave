import 'dart:async';

import 'package:flutter/material.dart';
import 'package:safe_wave/core/utils/app_assets.dart';
import '../../../../core/database/cache_helper.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/service/service_locator.dart';
import '../../../../core/utils/commons.dart';
import '../components/splash_component.dart';

class NavigateSplashScreen extends StatefulWidget {
   const NavigateSplashScreen({super.key});

  @override
  State<NavigateSplashScreen> createState() => _NavigateSplashScreenState();
}

class _NavigateSplashScreenState extends State<NavigateSplashScreen> {
  final List<SplashComponent> splash = [
    const SplashComponent(image: AppAssets.splashOne),
    const SplashComponent(image: AppAssets.splashTwo),
    const SplashComponent(image: AppAssets.splashThree),
    const SplashComponent(image: AppAssets.splashFour),
    const SplashComponent(image: AppAssets.splashFive),
    const SplashComponent(image: AppAssets.splashSix),
  ];

  // wait some time and navigate to login screen
  Future<void> navigateAfterThreeSeconds()async {
    bool isVisitedLogin =
        sl<CacheHelper>().getData(key: 'loginKey') ?? false;
      navigateReplacement(
        context: context,
        route: isVisitedLogin? Routes.home : Routes.login,
    );
  }

  final PageController _pageController = PageController();
  Timer? _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(milliseconds: 650), (timer)async {
      if (_currentPage < splash.length - 1) {
        _currentPage++;
      }else if(_currentPage == 5) {
        print('kkkkk');
        await navigateAfterThreeSeconds();
        //navigateReplacement(context: context, route: Routes.login);
      }else
     {
        _currentPage = 0;
      }
      _pageController.jumpToPage(
        _currentPage,
        // duration: Duration(milliseconds: 500),
        // curve: Curves.fastOutSlowIn,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: splash.length,
          itemBuilder: (context,index){
            return splash[index];
          },

      ),
    );
  }
}
