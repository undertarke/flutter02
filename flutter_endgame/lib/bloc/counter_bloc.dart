import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_endgame/bloc/counter_event.dart';
import 'package:flutter_endgame/bloc/counter_state.dart';

class CounterBloc extends Bloc {
  CounterBloc() : super(CounterState(5)) {
    on<TangSo>((event, emit) {
      emit(CounterState(state.number + 1));
    });
    on<GiamSo>((event, emit) {
      emit(CounterState(state.number - 1));
    });
  }
}
