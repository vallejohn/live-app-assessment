part of 'calculator_bloc.dart';

enum Operation{addition, subtraction, multiplication, division, equals, none}

class CalculatorState extends Equatable {
  final String input;
  final double result;
  final Operation operation;

  const CalculatorState._({
    this.input = '',
    this.result = 0,
    this.operation = Operation.none
  });

const CalculatorState.initialValue() : this._(input: '', result: 0);
const CalculatorState.onInputUpdate(String input) : this._(input: input);
const CalculatorState.onCalculate(double result, String input) : this._(result: result, input: input);
const CalculatorState.clear() : this._(input: '', result: 0, operation: Operation.none);
const CalculatorState.clearLastInput(String input) : this._(input: input, result: 0, operation: Operation.none);

@override
  List<Object?> get props => [input, result, operation];

/*   const factory CalculatorState.initial() = _Initial;
  const factory CalculatorState.onAddition({required double answer}) = _OnAddition;
  const factory CalculatorState.onInputUpdate({required String input}) = _OnInputUpdate; */
}
