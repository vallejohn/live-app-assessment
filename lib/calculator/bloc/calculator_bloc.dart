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
  }

  void _onClear(Clear event, Emitter<CalculatorState> emit){
    
    emit(const CalculatorState.initialValue());
  }

  
  String firstValue = '';
  String secondValue = '';

  String _input = '';

  void _acceptInput(AcceptInput event, Emitter<CalculatorState> emit){
    _input = _input + event.value;
    emit(CalculatorState.onInputUpdate(_input));
  }

  void _onCalculate(Calculate event, Emitter<CalculatorState> emit){
    Parser p = Parser();
    ContextModel cm = ContextModel();

    try{
      Expression exp = p.parse(_input);
      _input = '';
      exp.evaluate(EvaluationType.REAL, cm);
      emit(CalculatorState.onCalculate(exp.evaluate(EvaluationType.REAL, cm)));
    }catch(e){
      emit(const CalculatorState.onCalculate(0));
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
