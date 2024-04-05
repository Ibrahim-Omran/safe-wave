import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/app.dart';
import 'core/service/service_locator.dart';
import 'feature/home/presentation/cubit/home_cubit/home_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServiceLocator();

  runApp(
      MultiBlocProvider(
          providers: [

            BlocProvider(
              create: (context) => sl<HomeCubit>(),
            ),

            ],
        child: const MyApp(),
      ),
  );
}

