import 'package:bloc/bloc.dart';
import 'package:eigital_flutter_assessment/app/bloc/app_bloc.dart';
import 'package:eigital_flutter_assessment/app/bloc_observer.dart';
import 'package:eigital_flutter_assessment/calculator/bloc/calculator_bloc.dart';
import 'package:eigital_flutter_assessment/home/home_view.dart';
import 'package:eigital_flutter_assessment/login/login_view.dart';
import 'package:eigital_flutter_assessment/maps/bloc/map_bloc.dart';
import 'package:eigital_flutter_assessment/maps/manager/bloc/map_manager_bloc.dart';
import 'package:eigital_flutter_assessment/news/bloc/news_bloc.dart';
import 'package:eigital_flutter_assessment/services/firebase_auth_service.dart';
import 'package:eigital_flutter_assessment/services/google_map_service.dart';
import 'package:eigital_flutter_assessment/services/news_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>(create: (context) {
          return AppBloc(
            firebaseAuthService: FirebaseAuthService(),
          )..add(StartupEvent());
        }),
        BlocProvider<NewsBloc>(create: (context) {
          return NewsBloc(
            newsApiService: NewsService()
          )..add(LoadLatestNews());
        }),
       BlocProvider<MapBloc>(create: (context) {
          return MapBloc(
            googleMapService: GoogleMapService()
          )..add(const MapEvent.loadMap());
        }),
        BlocProvider<MapManagerBloc>(create: (context) {
          return MapManagerBloc(
            googleMapService: GoogleMapService()
          )..add(const MapManagerEvent.started());
        }),
        BlocProvider<CalculatorBloc>(create: (context) {
          return CalculatorBloc(
          )..add(CalculatorInitial());
        })
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocBuilder<AppBloc, AppState>(
          builder: (context, state) {
            if (state is Authenticated) {
              return const HomeView();
            } else {
              return const LoginView();
            }
          },
        ),
      ),
    );
  }
}
