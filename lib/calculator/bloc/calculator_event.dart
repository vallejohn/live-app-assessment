part of 'calculator_bloc.dart';

abstract class CalculatorEvent extends Equatable{
  const CalculatorEvent();

  @override
  List<Object?> get props => [];

  /* const factory CalculatorEvent.started() = _Started;
  const factory CalculatorEvent.acceptInput({required String input, required Operation operation}) = _AcceptInput;
  const factory CalculatorEvent.calculate({required Operation operation}) = _OnCalculate; */

}

class Started extends CalculatorEvent{}

class AcceptInput extends CalculatorEvent{
  final String value;
  final Operation operation;

  const AcceptInput({
    this.value = '',
    this.operation = Operation.none
  });

  @override
  List<Object?> get props => [value, operation];
}

class Calculate extends CalculatorEvent{}

class CalculatorInitial extends CalculatorEvent{}

class Clear extends CalculatorEvent{}
class ClearLastInput extends CalculatorEvent{}
