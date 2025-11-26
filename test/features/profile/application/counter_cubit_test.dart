import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_template/features/profile/application/counter_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late CounterCubit cubit;

  setUp(() {
    cubit = CounterCubit();
  });

  group('increment()', () {
    blocTest<CounterCubit, int>(
      'should emit [1] when increment is called',
      build: () => cubit,
      act: (cubit) => cubit.increment(),
      expect: () => <int>[1],
    );
  });

  group('decrement()', () {
    blocTest<CounterCubit, int>(
      'should emit [-1] when decrement is called',
      build: () => cubit,
      act: (cubit) {
        cubit.decrement();
        cubit.increment();
      },
      expect: () => <int>[-1, 0],
    );
  });
}
