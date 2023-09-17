import 'package:flutter/material.dart';
import 'package:united/core/constants/image_assets.dart';

class AuthLogo extends StatelessWidget {
  const AuthLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImageAsset.appLogo,
      width: 200,
      height: 200,
    );
  }
}
