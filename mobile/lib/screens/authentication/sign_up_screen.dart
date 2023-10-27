import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:mobile/app_theme.dart';
import 'package:mobile/screens/authentication/sign_in_screen.dart';

class SignUpScreen extends StatefulWidget {
   static const String routePath = "sign_up_screen";
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  
  final _formkey = GlobalKey<FormState>();
  bool _showPassword = false;
  bool _isChecked = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
        title:  const Text("StudyPal",
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
                              return 'Please input your firstname.';
                            }
                            return null;
                          },
                          obscureText: false,
                          controller: _firstNameController,
                          decoration: const InputDecoration(
                            hintText: "FirstName",
                          ),
                          keyboardType: TextInputType.text,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                         TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'plese input your lastname ';
                            }
                            return null;
                          },
                          obscureText: false,
                          controller: _lastNameController,
                          decoration: const InputDecoration(
                            hintText: "LastName",
                          ),
                          keyboardType: TextInputType.text,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
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
                           Text("I accept the terms and privacy policy",
                           style:  Theme.of(context).textTheme.displaySmall,
                          ),
                          
                        ]),
                        const SizedBox(height:30),
                        SizedBox(
                          height: 50,
                          width: double.maxFinite,
                          child: ElevatedButton(
                              onPressed: () {},
                              child:  Text(
                                "Sign Up",
                                style:  Theme.of(context).textTheme.displaySmall?.copyWith(color: AppTheme.buttonTextColor),
                              )),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account?",
                            style: Theme.of(context).textTheme.displaySmall,
                            ),
                           GestureDetector(
                            onTap:(){
                               Navigator.of(context).pushNamed(
                                SignInScreen.routePath
                              );
                            },
                            child: Text(
                               "Sign In",
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