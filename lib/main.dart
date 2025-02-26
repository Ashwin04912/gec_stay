import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gecw_lakx/application/approval_process/approval_process_bloc.dart';
import 'package:gecw_lakx/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:gecw_lakx/application/cart/cart_listing_bloc.dart';
import 'package:gecw_lakx/application/hostel_prediction/hostel_prediction_bloc.dart';
import 'package:gecw_lakx/application/hostel_process/common_hostel_process/common_hostel_process_bloc.dart';
import 'package:gecw_lakx/application/room_details_owner/room_details_bloc.dart';
import 'package:gecw_lakx/firebase_options.dart';
import 'package:gecw_lakx/injection.dart';
import 'package:gecw_lakx/presentation/splash_screen/splash_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies('prod');
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //supabase 
  await Supabase.initialize(
    url: 'https://mksxoiizgunbatwgjgru.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1rc3hvaWl6Z3VuYmF0d2dqZ3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY3NDUwODMsImV4cCI6MjA1MjMyMTA4M30.flRm8k5nPQOoi1F63dZaL-BLvZXMLoP14cEpPur0mzA',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      
      providers: [
        BlocProvider<SignInFormBloc>(create: (context)=>getIt<SignInFormBloc>()),
        // BlocProvider<CreateHostelBloc>(create: (context)=>getIt<CreateHostelBloc>()),
        BlocProvider<ApprovalProcessBloc>(create: (context)=>getIt<ApprovalProcessBloc>()),
        BlocProvider<CommonHostelProcessBloc>(create: (context)=>getIt<CommonHostelProcessBloc>()),
        BlocProvider<RoomDetailsBloc>(create: (context)=>getIt<RoomDetailsBloc>()),
        BlocProvider<HostelPredictionBloc>(create: (context)=>getIt<HostelPredictionBloc>()),
        BlocProvider<CartListingBloc>(create: (context)=>getIt<CartListingBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[900],
          appBarTheme: AppBarTheme(
            color: Colors.grey[850],
            foregroundColor: Colors.white
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
