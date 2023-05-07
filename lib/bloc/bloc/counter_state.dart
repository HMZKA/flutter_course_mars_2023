part of 'counter_bloc.dart';

@immutable
abstract class CounterState {
  int counter;
  CounterState({required this.counter});
}

class CounterInitial extends CounterState {
  CounterInitial() : super(counter: 0);
}

class IncrementState extends CounterState {
  int num;
  IncrementState(this.num) : super(counter: num);
}
