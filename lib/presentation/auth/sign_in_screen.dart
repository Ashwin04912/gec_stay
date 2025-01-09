import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gecw_lakx/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:gecw_lakx/presentation/auth/sign_up_screen.dart';
import 'package:gecw_lakx/presentation/bottom_navigation/bottom_navigation_owner.dart';
import 'package:gecw_lakx/presentation/bottom_navigation/bottom_navigation_student.dart';
import 'package:gecw_lakx/presentation/student_home/student_home_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SignInFormBloc, SignInFormState>(
        listener: (context, state) {
          state.signInFailureOrSuccessOption.fold(() {}, (some) {
            some.fold((f) {
              final message = f.maybeWhen(
                invalidEmailAndPasswordCombinationFailure: () =>
                    "Invalid Password or Email Combination",
                    userNotFound:()=> "User not found",
                emailAlreadyInUse: () => "Email already in use",
                orElse: () => "Some Error Occured",
              );
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(message)));
            }, (s) {
              debugPrint("login success");
              if (s == 'student') {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => BottomNavigationBarStudentWidget()));
              } else {
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (ctx) => CreateHostelScreen()));
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => BottomNavigationBarOwnerWidget()));
                
              }
            });
          });
        },
        builder: (context, state) {
          return Container(
            margin: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Header Section
                const Column(
                  children: [
                    Text(
                      "Welcome Back",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Text("Enter your credentials to login"),
                  ],
                ),
                // Input Fields Section
                Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Email Input Field
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Email Address",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: Colors.purple.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.email),
                        ),
                        onChanged: (value) => context
                            .read<SignInFormBloc>()
                            .add(SignInFormEvent.emailAddressChangedEvent(
                                value)),
                        validator: (value) {
                          final emailValidation = context
                              .read<SignInFormBloc>()
                              .state
                              .emailAddress
                              .value;

                          return emailValidation.fold(
                            (failure) {
                              return failure.maybeMap(
                                invalidEmail: (_) => 'Invalid Email',
                                orElse: () => null,
                              );
                            },
                            (email) => null, // If email is valid, return null.
                          );
                        },
                      ),
                      const SizedBox(height: 10),
                      // Password Input Field
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: Colors.purple.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.password),
                        ),
                        obscureText: true,
                        onChanged: (value) => context
                            .read<SignInFormBloc>()
                            .add(SignInFormEvent.passwordChangedEvent(value)),
                        validator: (value) {
                          final passwordValidation = context
                              .read<SignInFormBloc>()
                              .state
                              .password
                              .value;

                          return passwordValidation.fold(
                            (failure) {
                              return failure.maybeMap(
                                shortPassword: (_) => 'Short Password',
                                orElse: () => null,
                              );
                            },
                            (password) =>
                                null, // If password is valid, return null.
                          );
                        },
                      ),
                      const SizedBox(height: 10),
                      // Login Button
                      state.isSubmitting
                          ? Center(
                              child: SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator()))
                          : ElevatedButton(
                              onPressed: () {
                                debugPrint("button pressed");
                                context.read<SignInFormBloc>().add(
                                    SignInFormEvent
                                        .signInWithEmailAndPasswordPressed());
                              },
                              style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                backgroundColor: Colors.purple,
                              ),
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                    ],
                  ),
                ),
                // Signup Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? "),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => const SignUpScreen(),
                        ));
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
