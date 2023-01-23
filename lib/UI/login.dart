import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isRemembered = false;
  TextStyle defaultStyle = const TextStyle(color: Colors.white70, fontSize: 16.0);
  TextStyle linkStyle = const TextStyle(color: Colors.white, fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
        child: Form(
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 100, bottom: 50),
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600
                      ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.email, color: Colors.white,),
                  hintText: 'Enter your Email', hintStyle: TextStyle(color: Colors.white70),
                  filled: true,
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.blue),
                    borderRadius: BorderRadius.circular(8.0)
                   ),
                  fillColor: Colors.blue
                ),
                onSaved: (String? value) {},
                validator: (String? value) {
                  return (value != null && value.contains('@'))
                      ? 'Do not use the @ char.'
                      : null;
                },
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child:  TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.lock, color: Colors.white),
                      hintText: 'Enter your Password',
                      hintStyle: TextStyle(color: Colors.white70),
                      filled: true,
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.blue),
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                      fillColor: Colors.blue
                  ),
                  onSaved: (String? value) {},
                  validator: (String? value) {
                    return (value != null && value.contains('@'))
                        ? 'Do not use the @ char.'
                        : null;
                  },
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: const Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(fontSize: 14),
                    ),
                  )),
              Row(
                children: <Widget>[
                  const SizedBox(
                    height: 10,
                  ),
                  Checkbox(
                    value: _isRemembered,
                    side: BorderSide(width: 2, color: Colors.white),
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
                    style: TextStyle(fontSize: 14.0),
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
                          borderRadius: BorderRadius.circular(50))
                  ),
                  onPressed: () {},
                  child: Text('LOGIN', style: TextStyle(
                      color: Colors.blue.shade800 , fontWeight: FontWeight.w700),

                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                '- OR -',
                style: TextStyle(fontSize: 17.0),
              ), //
              const SizedBox(
                height: 10,
              ), // T
              const Text(
                'Sign in with',
                style: TextStyle(fontSize: 14.0),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    iconSize: 50,
                    icon: const Icon(Icons.facebook),
                    onPressed: () {
                      // ...
                    },
                  ),
                  IconButton(
                    iconSize: 50,
                    icon: const Icon(Icons.email_rounded),
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
                          ..onTap = () => print('click')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
