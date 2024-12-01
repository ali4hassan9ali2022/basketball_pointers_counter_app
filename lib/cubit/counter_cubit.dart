import 'package:basketball_pointers_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(ResetState());
  int teamAPoints = 0;

  int teamBPoints = 0;
  void inCrement({required String team, required int counterIncrement}) {
    if (team == 'A') {
      teamAPoints += counterIncrement;
      emit(CounterAIncrementState());
    } else {
      teamBPoints += counterIncrement;
      emit(CounterBIncrementState());
    }
  }

  void reset() {
    teamAPoints = 0;

    teamBPoints = 0;
    emit(ResetState());
  }
}
