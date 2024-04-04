part of 'counter_bloc.dart';

class CounterState extends Equatable {
  final int counter;
  final int transacionCount;

  const CounterState({
    this.counter = 10,
    this.transacionCount = 0,
  });

  CounterState copyWith({
    int? counter,
    int? transacionCount,
  }) =>
      CounterState(
          counter: counter ?? this.counter,
          transacionCount: transacionCount ?? this.transacionCount);

  @override
  List<Object> get props => [counter, transacionCount];
}
