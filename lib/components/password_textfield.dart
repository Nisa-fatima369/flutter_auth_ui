import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/components/text_field_container.dart';
import 'package:flutter_auth_ui/constants.dart';

class PassswordTextField extends StatelessWidget {
 const PassswordTextField({super.key,required this.hintText,required this.onChanged});

  final String hintText;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return  TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        obscureText: true,
        cursorColor: kDeepPurpleColor,
        decoration: InputDecoration(
          hintText: hintText,
          icon: const Icon(
            Icons.lock,
            color: kDeepPurpleColor,
          ),
          suffixIcon: const Icon(
            Icons.visibility,
            color: kDeepPurpleColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
