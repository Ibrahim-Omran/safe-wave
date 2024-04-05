import 'package:get_it/get_it.dart';

import '../../feature/home/presentation/cubit/home_cubit/home_cubit.dart';


final sl = GetIt.instance;

Future<void>  initServiceLocator() async {

  // helpers
  // sl.registerLazySingleton<CacheHelper>(()=>CacheHelper());
  // sl.registerLazySingleton<SqfLiteHelper>(()=>SqfLiteHelper());

  // cubits

  sl.registerLazySingleton(()=>HomeCubit());



}