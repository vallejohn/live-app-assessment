part of 'app_bloc.dart';

enum AuthStatus{authenticated, unauthenticated}

class AppState extends Equatable{
  const AppState();

  @override
  List<Object?> get props => [];
}

class OnAuthenticationError extends AppState{
  const OnAuthenticationError({
    final String errorMessage = 'An error occured'
  });
}

class Unintialized extends AppState{}

class Authenticated extends AppState{
}

class Unauthenticated extends AppState{}

class IsLoading extends AppState{}



