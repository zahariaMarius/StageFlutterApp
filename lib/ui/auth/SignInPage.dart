import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ripetizioni/data/model/userauth/UserAuth.dart';
import 'package:ripetizioni/network/ConnectivityController.dart';

import 'package:ripetizioni/ui/auth/AuthController.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  AuthController authController = Get.find();

  final _formKey = GlobalKey<FormState>();
  bool _showPassword = false;

  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Obx(() => authController.loading.isTrue
                ? LinearProgressIndicator(minHeight: 8)
                : SizedBox.shrink()),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 48, 24, 0),
              child: Container(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      width: 100,
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Sign in',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 34),
                          )),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Column(
                    children: [
                      Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: TextFormField(
                                controller: emailTextController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                  prefixIcon: Icon(Icons.email),
                                  border: OutlineInputBorder(),
                                ),
                                validator: (value) {
                                  if (!GetUtils.isEmail(value!)) {
                                    return 'Please insert a valid email';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: TextFormField(
                                controller: passwordTextController,
                                obscureText: !_showPassword,
                                decoration: InputDecoration(
                                    labelText: 'Password',
                                    prefixIcon: Icon(Icons.lock),
                                    suffixIcon: IconButton(
                                        icon: Icon(_showPassword
                                            ? Icons.visibility_off
                                            : Icons.visibility),
                                        onPressed: () {
                                          setState(() =>
                                              _showPassword = !_showPassword);
                                        }),
                                    border: OutlineInputBorder()),
                                validator: (value) {
                                  if (value == null ||
                                      value.isEmpty ||
                                      value.length < 8) {
                                    return 'Password must contain at least 8 characters';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        String userAuth = /*UserAuth(
                                                'mario@gmail.com', 'password')
                                            .toJson()
                                            .toString();*/
                                        UserAuth(emailTextController.text, passwordTextController.text).toJson().toString();
                                        authController.signIn(userAuth);
                                      }
                                    },
                                    child: Text('SIGN IN')),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text.rich(TextSpan(children: [
                        TextSpan(text: 'Forgot your password? '),
                        TextSpan(
                            text: 'Get help signing in.',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ])),
                    ],
                  )),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 4, 0, 16),
                    child: Text.rich(TextSpan(children: [
                      TextSpan(text: 'Don\'t have an account? '),
                      TextSpan(
                          text: 'Sign up.',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.toNamed('/signUp'))
                    ])),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
