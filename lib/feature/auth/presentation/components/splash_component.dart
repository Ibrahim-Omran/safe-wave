import 'package:flutter/cupertino.dart';

import '../../../../core/utils/app_assets.dart';

class SplashComponent extends StatelessWidget {
  const SplashComponent({super.key, required this.image});

  final String image ;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Positioned(
          bottom: 0.0,
          child: Image.asset(
            image,
          ),
        ),

        Center(
          child: Image.asset(
            AppAssets.appLogo,
          ),
        ),

      ],
    );
  }
}
