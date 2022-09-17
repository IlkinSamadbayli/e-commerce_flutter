import 'package:e_commerce_flutter/styles/colors.dart';
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
              focusColor: AppColor.focusColor
            ),
          ),
          FloatingActionButton(
            focusColor: AppColor.mainColor,
            onPressed: () {},
            child: Column(
              children: [
                Text(text, style: TextStyle(
                  color: isFocused? AppColor.versionColorWhite : AppColor.mainColor
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
