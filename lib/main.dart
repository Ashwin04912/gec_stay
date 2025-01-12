import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gecw_lakx/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:gecw_lakx/application/hostel_process/common_hostel_process/common_hostel_process_bloc.dart';
import 'package:gecw_lakx/application/hostel_process/create_hostel/create_hostel_bloc.dart';
import 'package:gecw_lakx/application/hostel_process/owner_home/owner_home_bloc.dart';
import 'package:gecw_lakx/firebase_options.dart';
import 'package:gecw_lakx/injection.dart';
import 'package:gecw_lakx/presentation/auth/sign_in_screen.dart';
import 'package:gecw_lakx/presentation/splash_screen/splash_screen.dart';

import 'presentation/auth/sign_up_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies('prod');
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
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
        BlocProvider<CreateHostelBloc>(create: (context)=>getIt<CreateHostelBloc>()),
        BlocProvider<OwnerHomeBloc>(create: (context)=>getIt<OwnerHomeBloc>()),
        BlocProvider<CommonHostelProcessBloc>(create: (context)=>getIt<CommonHostelProcessBloc>()),
        
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
