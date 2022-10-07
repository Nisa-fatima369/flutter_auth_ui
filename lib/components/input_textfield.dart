import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/components/text_field_container.dart';
import 'package:flutter_auth_ui/constants.dart';

class InputTextField extends StatelessWidget {
  const InputTextField(
      {super.key,
      required this.hintText,
      this.icon = Icons.person,
      required this.onChanged});
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        onChanged: onChanged,
        cursorColor: kDeepPurpleColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kDeepPurpleColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
