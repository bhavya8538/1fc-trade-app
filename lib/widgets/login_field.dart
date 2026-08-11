import 'package:flutter/material.dart';

import '../theme/colors.dart';

class LoginField extends StatefulWidget {
  final String hint;
  final String icon;
  final IconData? iconData;
  final bool obscure;
  final Widget? suffix;

  const LoginField({
    super.key,
    required this.hint,
    required this.icon,
    this.iconData,
    this.obscure = false,
    this.suffix,
  });

  @override
  State<LoginField> createState() => _LoginFieldState();
}

class _LoginFieldState extends State<LoginField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscure;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      margin: const EdgeInsets.only(bottom: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: AppColors.border,
        ),
      ),
      child: TextField(
        obscureText: _obscureText,
        decoration: InputDecoration(
          border: InputBorder.none,

          contentPadding: const EdgeInsets.symmetric(
            vertical: 14,
          ),

          hintText: widget.hint,

          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),

          prefixIcon: widget.iconData != null
              ? Icon(
                  widget.iconData,
                  color: AppColors.primary,
                )
              : Padding(
                  padding: const EdgeInsets.all(15),
                  child: Image.asset(
                    widget.icon,
                    width: 20,
                    height: 20,
                  ),
                ),

          suffixIcon: widget.obscure
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  icon: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200),
                    transitionBuilder: (child, animation) {
                      return ScaleTransition(
                        scale: animation,
                        child: child,
                      );
                    },
                    child: Icon(
                      _obscureText
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      key: ValueKey(_obscureText),
                      color: Colors.grey,
                    ),
                  ),
                )
              : widget.suffix,
        ),
      ),
    );
  }
}