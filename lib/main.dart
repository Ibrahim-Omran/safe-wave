import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_wave/feature/auth/presentation/cubit/log_in_cubit/log_in_cubit.dart';
import 'package:safe_wave/feature/auth/presentation/cubit/sign_up_cubit/sign_up_cubit.dart';

import 'app/app.dart';
import 'core/database/cache_helper.dart';
import 'core/service/service_locator.dart';
import 'feature/home/presentation/cubit/home_cubit/home_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServiceLocator();
  await sl<CacheHelper>().init();


  runApp(
      MultiBlocProvider(
          providers: [

            BlocProvider(
              create: (context) => sl<HomeCubit>(),
            ),

            BlocProvider(
              create: (context) => sl<SignUpCubit>(),
            ),

            BlocProvider(
              create: (context) => sl<LoginCubit>(),
            ),

            ],
        child: const MyApp(),
      ),
  );
}

