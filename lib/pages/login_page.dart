import 'package:flutter/material.dart';

import '../constants/constant_input_button_widget.dart.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back, size: 40),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 110),
            child: Image.asset(
              'assets/login_2.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            "Login to Your Account",
            style: TextStyle(fontSize: 36),
          ),
          const SizedBox(height: 24),
          const ConstInput(
            isPassword: false,
            prefixIcon: Icons.mail,
          ),
          const SizedBox(height: 16),
          const ConstInput(
            isPassword: true,
            prefixIcon: Icons.lock,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = !isChecked;
                  });
                },
              ),
              const Text(
                'Remember me',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          elevatedbutton(
            text: 'Sign in',
            clicked: true,
          ),
          const SizedBox(height: 32),
          const InkWell(
            child: Text(
              'Forgot the password?',
              style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text('or continue with'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Row(
              children: [
                Expanded(
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.facebook_rounded,
                        color: Colors.blue,
                        size: 36,
                      )),
                ),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Image.asset(
                      './assets/google.png',
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.apple,
                      size: 36,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Dont have an account?'),
              const SizedBox(width: 4),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Sign up',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
