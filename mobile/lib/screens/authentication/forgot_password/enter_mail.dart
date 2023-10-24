import 'package:flutter/material.dart';
import 'package:mobile/app_theme.dart';
import 'package:mobile/screens/authentication/forgot_password/otp_verification.dart';
class EnterMail extends StatefulWidget {
   static const String routePath = "enter_mail";
  const EnterMail({super.key});

  @override
  State<EnterMail> createState() => _EnterMailState();
}

class _EnterMailState extends State<EnterMail> {
    final _formKey = GlobalKey<FormState>();
    final TextEditingController _emailController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:  AppBar(
        backgroundColor: AppTheme.scaffoldBackgroundColor,
         automaticallyImplyLeading: false,
        title:  const Text("StudyPal",
        style: TextStyle(
          fontSize: 22,
          fontWeight:FontWeight.bold
        ),
        ),
        centerTitle: true,
      ),
      body:  SizedBox(
        height:double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 30, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                Center(
                  child: Text("Verify your account",
                               
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 18),
                  ),
                ),
                 const SizedBox(
                          height: 20,
                        ),
                Text("Please enter your account email address in the field below. A  4-DIGIT pin will be sent to it",
                style: Theme.of(context).textTheme.displaySmall,
                ),
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
                  const SizedBox(height: 40,),
                   SizedBox(
                          height: 50,
                          width: double.maxFinite,
                          child: ElevatedButton(
                              onPressed: () {
                                 Navigator.of(context).pushNamed(
                                OtpVerification.routePath
                              );
                              },
                              child:  Text(
                                "Submit",
                                style:  Theme.of(context).textTheme.displaySmall?.copyWith(color: AppTheme.buttonTextColor),
                              )),
                        ),
            ],
          ),
        ),
      ),
    );
  }
}