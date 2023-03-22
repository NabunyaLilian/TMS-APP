import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tms_app/UI/dashboard.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  /// Checks if person is remembered.
  bool _isRemembered = false;

  /// Sets the default text style.
  TextStyle defaultStyle = const TextStyle(color: Colors.white70, fontSize: 16);

  /// Sets the default link style.
  TextStyle linkStyle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );

  final formKey = GlobalKey<FormState>();

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(top: 100, bottom: 50),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                ),
                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Enter your Email',
                    hintStyle: const TextStyle(color: Colors.white70),
                    filled: true,
                    border: InputBorder.none,
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    fillColor: Colors.blue,
                  ),
                  onSaved: (String? value) {},
                  validator: (String? value) {
                    return (value != null && value.contains('@'))
                        ? null
                        : 'Enter Email';
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  obscureText: _obscureText,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Enter your Password',
                    hintStyle: const TextStyle(color: Colors.white70),
                    filled: true,
                    border: InputBorder.none,
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    fillColor: Colors.blue,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText
                            ? Icons.remove_red_eye
                            : Icons.remove_red_eye_outlined,
                        color: Colors.white38,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                  onSaved: (String? value) {},
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter Password';
                    }
                    return (value.characters.length < 6)
                        ? 'Password too short'
                        : null;
                  },
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: InkWell(
                      onTap: forgotPassword,
                      child: const Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(fontSize: 14),
                        ),
                      )),
                ),
                Row(
                  children: <Widget>[
                    const SizedBox(
                      height: 10,
                    ),
                    Checkbox(
                      activeColor: Colors.white,
                      checkColor: Colors.blue,
                      value: _isRemembered,
                      side: const BorderSide(width: 2, color: Colors.white),
                      onChanged: (bool? value) {
                        setState(() {
                          _isRemembered = value!;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ), //SizedBox
                    const Text(
                      'Remember Me',
                      style: TextStyle(fontSize: 14),
                    ), //Text
                  ], //<Widget>[]
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: const Size(300, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Dashboard(),
                          ),
                        );
                      }
                    },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.blue.shade800,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 10),
                  child: Text(
                    '- OR -',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Sign in with',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      iconSize: 45,
                      icon: Image.asset('assets/images/ic_facebook_white.png'),
                      onPressed: () {
                        // ...
                      },
                    ),
                    IconButton(
                      iconSize: 50,
                      icon: Image.asset('assets/images/ic_google.png'),
                      onPressed: () {
                        // ...
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                    text: "Don't have an account ",
                    style: defaultStyle,
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Sign Up!',
                        style: linkStyle,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => print('click'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }


  /// Run if a person forgot password.
  void forgotPassword() {
    //
  }
}
