part of 'app_bloc.dart';

@immutable
abstract class AppEvent extends Equatable{}

class StartupEvent extends AppEvent{
  @override
  List<Object?> get props => [];
}

class LoginEvent extends AppEvent{
  @override
  List<Object?> get props =>[];

}

