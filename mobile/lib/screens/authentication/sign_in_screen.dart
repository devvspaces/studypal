import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:mobile/app_theme.dart';
import 'package:mobile/screens/authentication/reset_screen.dart';
import 'package:mobile/screens/authentication/sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  static const String routePath = "sign_in_screen";
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  bool _showPassword = false;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("StudyPal",
        style: TextStyle(
          fontSize: 22,
          fontWeight:FontWeight.bold
        ),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 30, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Form(
                    key: _formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email.';
                            }
                            return null;
                          },
                          obscureText: false,
                          controller: _emailController,
                          decoration: const InputDecoration(
                            hintText: "Email",
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password.';
                            }
                            return null;
                          },
                          obscureText: _showPassword,
                          controller: _passwordController,
                          decoration: InputDecoration(
                            hintText: "Password",
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _showPassword = !_showPassword;
                                });
                              },
                              icon: Iconify(
                                !_showPassword
                                    ? Mdi.eye_outline
                                    : Mdi.eye_off_outline,
                                color: AppTheme.iconColors,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(children: [
                          Checkbox(
                              value: _isChecked,
                              activeColor: AppTheme.checkBoxColor,
                              onChanged: (bool? value) {
                                setState(() {
                                  _isChecked = value!;
                                });
                              }),
                           Text("Remember me",
                           style:  Theme.of(context).textTheme.displaySmall,
                          ),
                          const SizedBox(
                            width: 150,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed(
                                ResetScreen.routePath
                              );
                            },
                            child:  Text("Forgot Password",
                           style:  Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold),
                            ),
                          )
                        ]),
                        const SizedBox(height:30),
                        SizedBox(
                          height: 50,
                          width: double.maxFinite,
                          child: ElevatedButton(
                              onPressed: () {},
                              child:  Text(
                                "Log in",
                                style:  Theme.of(context).textTheme.displaySmall?.copyWith(color: AppTheme.buttonTextColor),
                              )),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Dont have an account?",
                            style: Theme.of(context).textTheme.displaySmall,
                            ),
                           GestureDetector(
                            onTap:(){
                               Navigator.of(context).pushNamed(
                                SignUpScreen.routePath
                              );
                            },
                            child: Text(
                               "Sign Up",
                               style: Theme.of(context).textTheme.displaySmall?.copyWith(color: AppTheme.primaryColor),

                            )
                           )
                          ]),
                      ],
                    ))
              ],
            ),
          )),
    );
  }
}
