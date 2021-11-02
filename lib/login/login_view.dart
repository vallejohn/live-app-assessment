import 'package:eigital_flutter_assessment/app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: const Text('Login'),),
          body: Center(
            child: TextButton(
              onPressed: () => context.read<AppBloc>().add(LoginEvent()),
              child: const Text('Signin Anonymously', style: TextStyle(fontSize: 20),),
            ),
          ),
        );
      }
    );
  }
}