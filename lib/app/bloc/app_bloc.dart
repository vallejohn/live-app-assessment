import 'package:bloc/bloc.dart';
import 'package:eigital_flutter_assessment/services/firebase_auth_service.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {

  final FirebaseAuthService _firebaseAuthService;

  AppBloc({required FirebaseAuthService firebaseAuthService}) 
    : _firebaseAuthService = firebaseAuthService, super(Unintialized()) {
    on<StartupEvent>(_onStartupEvent);
    on<LoginEvent>(_onAnonymousSignin);
  }

  void _onStartupEvent(StartupEvent event, Emitter<AppState> emit) async{
    try{
      final isSignedin = await _firebaseAuthService.isSignedin();
      if(isSignedin!){
        emit(Authenticated());
      }else{
        emit(Unauthenticated());
      }
    }catch(e){
      emit(const OnAuthenticationError());
    }
  }

  void _onAnonymousSignin(LoginEvent event, Emitter<AppState> emit) async{
    try{
      User? user = await _firebaseAuthService.signinAnonymously();
      emit(Authenticated());
    }catch(e){
      emit(OnAuthenticationError(errorMessage: e.toString()));
    }
  }
}
