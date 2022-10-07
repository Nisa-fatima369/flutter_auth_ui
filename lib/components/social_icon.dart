import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/constants.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    super.key,
    required this.icon,
    required this.press,
  });
  final String icon;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryLightColor,
          ),
          shape: BoxShape.circle,
        ),
        child: Image(
          image: AssetImage(icon),
          color: kPrimaryColor,
          height: 20.0,
          width: 20.0,
        ),
      ),
    );
  }
}
