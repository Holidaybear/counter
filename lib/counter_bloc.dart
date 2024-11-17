import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterValueState(0)) {
    on<CounterIncrementEvent>((event, emit) {
      emit(CounterValueState((state as CounterValueState).value + 1));
    });
  }
}
