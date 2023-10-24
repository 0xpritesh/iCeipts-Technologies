import 'package:flutter/material.dart';
import 'package:flutter_application_2/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _rememberMe = false;
  final _formKey = GlobalKey<FormState>();
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: SingleChildScrollView(
              child: SafeArea(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                Form(
                    key: _formKey,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          // Greetings
                          const Text(
                            "Create an Account",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 6),

                          Text(
                            "Welcome! Please enter your Details",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 20),

                          // Input form
                          // Email input
                          Text(
                            "Email Address",
                            style: TextStyle(fontSize: 14),
                          ),
                          TextFormField(
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                            onSaved: (newValue) {},
                            validator: (value) =>
                                value!.toString().trim().isEmpty ||
                                        !value.toString().contains("@")
                                    ? 'Enter your Email Address'
                                    : null,
                          ),
                          const SizedBox(height: 20),

                          // Password input
                          Text(
                            "Password",
                            style: TextStyle(fontSize: 14),
                          ),
                          TextFormField(
                            cursorColor: Colors.black,
                            onChanged: (value) {
                              _password = value;
                            },
                            textInputAction: TextInputAction.next,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            onSaved: (newValue) {},
                            validator: (value) =>
                                value!.toString().trim().isEmpty
                                    ? 'Enter your password'
                                    : null,
                          ),

                          const SizedBox(height: 20),

                          // Confirm password input
                          Text(
                            "Confirm Password",
                            style: TextStyle(fontSize: 14),
                          ),
                          TextFormField(
                              cursorColor: Colors.black,
                              textInputAction: TextInputAction.done,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              validator: (value) {
                                if (value!.toString().trim().isEmpty) {
                                  return "Enter confirm password";
                                }
                                if (value.toString() != _password) {
                                  return 'Password is not same';
                                }
                                return null;
                              }),

                          // Actions - forget password
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              SizedBox(
                                height: 18,
                                width: 12,
                                child: Transform.scale(
                                  scale: .7,
                                  child: Checkbox(
                                    value: _rememberMe,
                                    activeColor: Colors.black,
                                    side: BorderSide(
                                        color: Colors.black, width: 2),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    onChanged: (value) {
                                      setState(() {
                                        _rememberMe = value ?? false;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                "Remember me",
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),

                          // Sign in Button
                          MaterialButton(
                              height: 50,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              color: Colors.black,
                              elevation: 0,
                              minWidth: double.infinity,
                              child: const Text(
                                "Create Account",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute<void>(
                                  //     builder: (BuildContext context) =>
                                  //         RegistrationScreen(),
                                  //   ),
                                  // );
                                }
                              }),

                          Padding(
                            padding: EdgeInsets.only(top: 40, bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Already have a account?",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12)),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute<void>(
                                            builder: (BuildContext context) =>
                                                LoginScreen(),
                                          ));
                                    },
                                    child: Text(" Sign in",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]))
              ]))))
    ]));
  }
}
