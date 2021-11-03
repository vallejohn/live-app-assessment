import 'package:eigital_flutter_assessment/calculator/bloc/calculator_bloc.dart';
import 'package:eigital_flutter_assessment/calculator/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text('Calculator'),),
      body: BlocBuilder<CalculatorBloc, CalculatorState>(
        builder: (context, state) => BlocBuilder<CalculatorBloc, CalculatorState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(state.result.toString(),
                  style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(state.input,
                  style: const TextStyle(fontSize: 25),
                ),
              ),
              Row(
                children: [
                  Expanded(flex: 1, child: CustomButton(value: '(', onPressed:() => context.read<CalculatorBloc>().add(const AcceptInput(value: '(')))),
                  Expanded(flex: 1, child: CustomButton(value: ')', onPressed:() => context.read<CalculatorBloc>().add(const AcceptInput(value: ')')))),
                  Expanded(flex: 1, child: CustomButton(value: 'C', onPressed:() => context.read<CalculatorBloc>().add(Clear()))),
                  Expanded(flex: 1, child: CustomButton(value: '<--', onPressed:() => context.read<CalculatorBloc>().add(ClearLastInput()))),
                ],
              ),
              Row(
                children: [
                  Expanded(flex: 1, child: CustomButton(value: '7', onPressed:() => context.read<CalculatorBloc>().add(const AcceptInput(value: '7')))),
                  Expanded(flex: 1, child: CustomButton(value: '8', onPressed:() => context.read<CalculatorBloc>().add(const AcceptInput(value: '8')))),
                  Expanded(flex: 1, child: CustomButton(value: '9', onPressed:() => context.read<CalculatorBloc>().add(const AcceptInput(value: '9')))),
                  Expanded(flex: 1, child: CustomButton(value: 'x', onPressed:() => context.read<CalculatorBloc>().add(const AcceptInput(value: '*')))),
                ],
              ),
              Row(
                children: [
                  Expanded(flex: 1, child: CustomButton(value: '4', onPressed:() => context.read<CalculatorBloc>().add(const AcceptInput(value: '4')))),
                  Expanded(flex: 1, child: CustomButton(value: '5', onPressed:() => context.read<CalculatorBloc>().add(const AcceptInput(value: '5')))),
                  Expanded(flex: 1, child: CustomButton(value: '6', onPressed:() => context.read<CalculatorBloc>().add(const AcceptInput(value: '6')))),
                  Expanded(flex: 1, child: CustomButton(value: '-', onPressed:() => context.read<CalculatorBloc>().add(const AcceptInput(value: '-')))),
                ],
              ),
              Row(
                children: [
                  Expanded(flex: 1, child: CustomButton(value: '1', onPressed:() => context.read<CalculatorBloc>().add(const AcceptInput(value: '1')))),
                  Expanded(flex: 1, child: CustomButton(value: '2', onPressed:() => context.read<CalculatorBloc>().add(const AcceptInput(value: '2')))),
                  Expanded(flex: 1, child: CustomButton(value: '3', onPressed:() => context.read<CalculatorBloc>().add(const AcceptInput(value: '3')))),
                  Expanded(flex: 1, child: CustomButton(value: '+', onPressed:() => context.read<CalculatorBloc>().add(const AcceptInput(value: '+')))),
                ],
              ),
              Row(
                children: [
                  Expanded(flex: 1, child: CustomButton(value: '0', onPressed:() => context.read<CalculatorBloc>().add(const AcceptInput(value: '0')))),
                  Expanded(flex: 1, child: CustomButton(value: '.', onPressed:() => context.read<CalculatorBloc>().add(const AcceptInput(value: '.')))),
                  Expanded(flex: 1, child: CustomButton(value: '=', onPressed:() => context.read<CalculatorBloc>().add(Calculate()))),
                  Expanded(flex: 1, child: CustomButton(value: '/', onPressed:() => context.read<CalculatorBloc>().add(const AcceptInput(value: '/')))),
                ],
              ),
            ],
          );
        },
      ),
      ),
    );
  }
}