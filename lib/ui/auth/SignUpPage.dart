import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ripetizioni/data/model/user/User.dart';
import 'package:ripetizioni/ui/auth/AuthController.dart';


class SingUpPage extends StatefulWidget {
  @override
  _SingUpPageState createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  AuthController authController = Get.find();

  final _formKey = GlobalKey<FormState>();
  bool _showPassword = false;
  bool _showConfirmPassword = false;

  TextEditingController _nameTextController = TextEditingController();
  TextEditingController _lastNameTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _confirmPasswordTextController = TextEditingController();

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
                child: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Sign up',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 34),
                      )),
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
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: TextFormField(
                                        controller: _nameTextController,
                                        keyboardType: TextInputType.name,
                                        decoration: InputDecoration(
                                          labelText: 'Name',
                                          prefixIcon: Icon(Icons.person),
                                          border: OutlineInputBorder(),
                                        ),
                                        validator: (value) {
                                          if (!GetUtils.isAlphabetOnly(value!)) {
                                            return 'Please insert a valid name.';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: TextFormField(
                                        controller: _lastNameTextController,
                                        keyboardType: TextInputType.name,
                                        decoration: InputDecoration(
                                          labelText: 'Lastname',
                                          prefixIcon: Icon(Icons.person),
                                          border: OutlineInputBorder(),
                                        ),
                                        validator: (value) {
                                          if (!GetUtils.isAlphabetOnly(value!)) {
                                            return 'Please insert a valid lastname.';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: TextFormField(
                                controller: _emailTextController,
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
                                controller: _passwordTextController,
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
                              padding: const EdgeInsets.only(bottom: 16),
                              child: TextFormField(
                                controller: _confirmPasswordTextController,
                                obscureText: !_showConfirmPassword,
                                decoration: InputDecoration(
                                    labelText: 'Repeat password',
                                    prefixIcon: Icon(Icons.lock),
                                    suffixIcon: IconButton(
                                        icon: Icon(_showConfirmPassword
                                            ? Icons.visibility_off
                                            : Icons.visibility),
                                        onPressed: () {
                                          setState(() => _showConfirmPassword =
                                              !_showConfirmPassword);
                                        }),
                                    border: OutlineInputBorder()),
                                validator: (value) {
                                  if (value != _passwordTextController.text) {
                                    return 'Password not match.';
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
                                        print('valido');
                                        User user = User(
                                            name: _nameTextController.text,
                                            lastname:
                                                _lastNameTextController.text,
                                            email: _emailTextController.text,
                                            password:
                                                _passwordTextController.text);
                                        Map<String, dynamic> jsonUser = user.toJson();
                                        jsonUser.remove('id');
                                        jsonUser.remove('role');
                                        authController.signUp(jsonUser.toString());
                                      }
                                    },
                                    child: Text('SIGN UP')),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text.rich(TextSpan(children: [
                      TextSpan(text: 'By signing up, you agree to our '),
                      TextSpan(
                          text: 'Terms',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline)),
                      TextSpan(text: ' & '),
                      TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline)),
                    ])),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 4, 0, 16),
                    child: Text.rich(TextSpan(children: [
                      TextSpan(text: 'Already have an account? '),
                      TextSpan(
                          text: 'Sign in.',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.toNamed('/signIn'))
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
