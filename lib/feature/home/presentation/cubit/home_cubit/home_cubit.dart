
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_wave/feature/selectBoard/presentation/screens/select_board_screen.dart';

import '../../../../addBoard/presentation/screens/add_board_screen.dart';
import '../../../../profile/presentation/screens/profile_screen.dart';

import '../../../../rangeWave/presentation/screens/range_wave_screen.dart';
import '../../screens/home_body_screen.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  List<Widget> screens = [
    const HomeBodyScreen(),
    const ProfileScreen(),
    const AddBoardScreen(),
    const RangeWaveScreen(),
    const SelectBoardScreen(),
  ];
  int currentIndex = 0;

  void changeIndex(index){
    currentIndex = index ;
    emit(ChangeIndexState());
  }





}