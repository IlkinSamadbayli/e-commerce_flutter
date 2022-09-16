import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String text;
  final IconData suffixButtonIcon;
  final bool isFocused;
  const HomePage({
    Key? key,
    required this.text,
    required this.suffixButtonIcon,
    required this.isFocused,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Home Page'),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter text',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              focusColor: Colors.blue,
            ),
          ),
          FloatingActionButton(
            focusColor: Colors.green,
            onPressed: () {},
            child: Row(
              children: [
                Text(text, style: TextStyle(
                  color: isFocused? Colors.white : Colors.green 
                ),),
                const SizedBox(
                  width: 4,
                ),
                Icon(suffixButtonIcon),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
