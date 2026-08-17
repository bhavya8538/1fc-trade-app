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
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final fieldColor = isDark
        ? const Color(0xFF102C29)
        : Colors.white;

    final borderColor = isDark
        ? const Color(0xFF31504B)
        : AppColors.border;

    final hintColor = isDark
        ? const Color(0xFFA8B5B2)
        : Colors.grey;

    final iconColor = isDark
        ? const Color(0xFF00A67D)
        : AppColors.primary;

    final textColor = isDark
        ? const Color(0xFFF5F7F6)
        : const Color(0xFF1E1E1E);

    return Container(
      height: 52,
      margin: const EdgeInsets.only(bottom: 6),
      decoration: BoxDecoration(
        color: fieldColor,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: borderColor,
        ),
      ),
      child: TextField(
        obscureText: _obscureText,

        style: TextStyle(
          color: textColor,
          fontSize: 15,
        ),

        cursorColor: iconColor,

        decoration: InputDecoration(
          border: InputBorder.none,

          contentPadding: const EdgeInsets.symmetric(
            vertical: 14,
          ),

          hintText: widget.hint,

          hintStyle: TextStyle(
            color: hintColor,
            fontSize: 15,
          ),

          prefixIcon: widget.iconData != null
              ? Icon(
                  widget.iconData,
                  color: iconColor,
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
                      color: hintColor,
                    ),
                  ),
                )
              : widget.suffix,
        ),
      ),
    );
  }
}