import 'package:get_it/get_it.dart';
import 'package:safe_wave/feature/auth/presentation/cubit/log_in_cubit/log_in_cubit.dart';

import '../../feature/auth/presentation/cubit/sign_up_cubit/sign_up_cubit.dart';
import '../../feature/home/presentation/cubit/home_cubit/home_cubit.dart';
import '../database/cache_helper.dart';


final sl = GetIt.instance;

Future<void>  initServiceLocator() async {

  // helpers
   sl.registerLazySingleton<CacheHelper>(()=>CacheHelper());
  // sl.registerLazySingleton<SqfLiteHelper>(()=>SqfLiteHelper());

  // cubits

  sl.registerLazySingleton(()=>HomeCubit());
  sl.registerLazySingleton(()=>SignUpCubit());
  sl.registerLazySingleton(()=>LoginCubit());



}