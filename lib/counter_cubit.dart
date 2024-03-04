import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterInitial> {
  CounterCubit() : super(CounterInitial(0));

  void decrementCounter()=>emit(CounterInitial(state.counterValue -1));
  void incrementCounter()=>emit(CounterInitial(state.counterValue +1));

}




