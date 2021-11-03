import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:math_expressions/math_expressions.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(const CalculatorState.initialValue()) {
    on<AcceptInput>(_acceptInput);
    on<Calculate>(_onCalculate);
    on<Clear>(_onClear);
    on<ClearLastInput>(_onClearLastInput);
  }

  String _input = '';

  void _onClearLastInput(ClearLastInput event, Emitter<CalculatorState> emit){
    try{
      _input = _input.substring(0, _input.length - 1);
      emit(CalculatorState.clearLastInput(_input));
    }catch(e){
      print(e);
    }
    
  }

  void _onClear(Clear event, Emitter<CalculatorState> emit){
    _input = '';
    emit(const CalculatorState.clear());
  }


  void _acceptInput(AcceptInput event, Emitter<CalculatorState> emit){
    _input = _input + event.value;
    emit(CalculatorState.onInputUpdate(_input));
  }

  void _onCalculate(Calculate event, Emitter<CalculatorState> emit){
    Parser p = Parser();
    ContextModel cm = ContextModel();

    try{
      Expression exp = p.parse(_input);
      Expression evaluatedExp = exp.simplify();
      print('Simplified: $evaluatedExp');
      emit(CalculatorState.onCalculate(evaluatedExp.evaluate(EvaluationType.REAL, cm), ''));
    }catch(e){
      print(e);
      emit(const CalculatorState.onCalculate(0, 'Error'));
    }
  }

  double? toDouble(String value){
    try{
      return double.tryParse(value);
    }catch(e){
      return 0;
    }
  }
}
