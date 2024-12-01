

import 'package:basketball_pointers_counter_app/cubit/counter_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubitCubit extends Cubit<CounterCubitState> {
  CounterCubitCubit() : super(CounterAIncrementState());
}
