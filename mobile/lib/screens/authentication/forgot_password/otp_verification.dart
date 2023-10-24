import 'package:flutter/material.dart';
import 'package:mobile/app_theme.dart';
import 'package:mobile/screens/authentication/forgot_password/reset_screen.dart';

class OtpVerification extends StatefulWidget {
  static const String routePath = "otp_verification";
  
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _otpController = TextEditingController();
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
            padding:
                const EdgeInsets.only(right: 20, left: 20, top: 30, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Verify your account",
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 18),
                  ),
                ),
                const SizedBox(
                          height: 20,
                        ),
                 Text(
                    "Please enter the 4-DIGIT pin sent to email",
                    style: Theme.of(context).textTheme.displaySmall,
                    ),
                const SizedBox(
                  height: 30,
                ),
                Form(
                    key: _formKey,
                    child: TextFormField(
                       keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter code.';
                                  }
                                  if(value.length==1){
                                    return '3 entries left';
                                  }
                                  if(value.length==2){
                                    return '2 entries left';
                                  } if(value.length==3){
                                    return '1 entries left';
                                  }
                                  return null;
                                },
                      obscureText: false,
                      controller: _otpController,
                      decoration: const InputDecoration(
                        hintText: "OTP",
                      ),
                     
                    )),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 50,
                  width: double.maxFinite,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(ResetScreen.routePath);
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
