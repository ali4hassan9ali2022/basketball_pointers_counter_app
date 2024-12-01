

import 'package:basketball_pointers_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubitCubit extends Cubit<CounterCubitState> {
  CounterCubitCubit() : super(CounterAIncrementState());
  int teamAPoints = 0;

  int teamBPoints = 0;
  void inCrement({required String team, required int counterIncrement}) {
    if (team == 'A') {
      teamAPoints+=counterIncrement;
      emit(CounterAIncrementState());
    } else {
      teamBPoints+=counterIncrement;
      emit(CounterBIncrementState());
    }
  }
}
