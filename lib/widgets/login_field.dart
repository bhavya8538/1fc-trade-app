import 'package:flutter/material.dart';

import '../theme/colors.dart';

class LoginField extends StatelessWidget {
  final String hint;
  final String icon;
  final bool obscure;
  final Widget? suffix;

  const LoginField({
    super.key,
    required this.hint,
    required this.icon,
    this.obscure = false,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      margin: const EdgeInsets.only(bottom: 18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: AppColors.border,
        ),
      ),
      child: TextField(
        obscureText: obscure,
        decoration: InputDecoration(
          border: InputBorder.none,

          contentPadding: const EdgeInsets.symmetric(
            vertical: 18,
          ),

          hintText: hint,

          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),

          prefixIcon: Padding(
            padding: const EdgeInsets.all(15),
            child: Image.asset(
              icon,
              width: 20,
              height: 20,
            ),
          ),

          suffixIcon: suffix,
        ),
      ),
    );
  }
}