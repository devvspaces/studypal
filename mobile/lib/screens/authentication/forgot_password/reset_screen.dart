import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:mobile/app_theme.dart';
import 'package:mobile/screens/authentication/sign_in_screen.dart';

class ResetScreen extends StatefulWidget {
  static const String routePath = "reset_screen";
  const ResetScreen({super.key});

  @override
  State<ResetScreen> createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
      bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "StudyPal",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 30, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Center(
                   child: Text(
                    "Reset Password",
                   
                               style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 18),
                                 ),
                 ),
                const SizedBox(height:20),
                 Text("Enter and confirm your password",
                style: Theme.of(context).textTheme.displaySmall,),
                const SizedBox(
                  height: 30,
                ),
                Form(
                    key: _formKey,
                    child: TextFormField(
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
                    )),
                    const SizedBox(
                          height: 20,
                        ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your new password.';
                    }
                    return null;
                  },
                  obscureText: _showPassword,
                  controller: _newPasswordController,
                  decoration:  InputDecoration(
                    hintText: "New password",
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
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please comfirm  your password.';
                    }
                    return null;
                  },
                  obscureText: _showPassword,
                  controller: _confirmPasswordController,
                  decoration:  InputDecoration(
                    hintText: "ConfirmPassword",
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
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 50,
                  width: double.maxFinite,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(SignInScreen.routePath);
                      },
                      child: Text(
                        "Submit",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(color: AppTheme.buttonTextColor),
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}
