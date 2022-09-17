import 'package:e_commerce_flutter/styles/colors.dart';
import 'package:flutter/material.dart';

class ConstInput extends StatefulWidget {
  final String? labelText;
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool isPassword;

  const ConstInput({
    Key? key,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    required this.isPassword,
  }) : super(key: key);

  @override
  State<ConstInput> createState() => _ConstInputState();
}

class _ConstInputState extends State<ConstInput> {
  bool clicked = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 50,
      child: TextField(
        obscureText: widget.isPassword ? clicked : false,
        decoration: InputDecoration(
          prefixIcon: Icon(widget.prefixIcon),
          suffixIcon: widget.isPassword
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      clicked = !clicked;
                    });
                  },
                  child: clicked
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                )
              : Icon(widget.suffixIcon),
          labelText: widget.labelText,
          hintText: widget.hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: AppColor.focusColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: AppColor.focusColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: AppColor.mainColor,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: AppColor.errorColor,
            ),
          ),
          focusColor: AppColor.focusColor,
        ),
      ),
    );
  }
}

Widget elevatedbutton({
  required String text,
  IconData? suffixButtonIcon,
  required bool clicked,
  VoidCallback? onTap,
}) {
  return SizedBox(
    width: 250,
    height: 50,
    child: RawMaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(36),
      ),
      onPressed: onTap,
      elevation: 80,
      fillColor: clicked ? AppColor.mainColor : AppColor.textColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              color: clicked ? AppColor.versionColorWhite : AppColor.mainColor,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Icon(
            suffixButtonIcon,
            color: clicked ? AppColor.versionColorWhite : AppColor.mainColor,
          ),
        ],
      ),
    ),
  );
}
