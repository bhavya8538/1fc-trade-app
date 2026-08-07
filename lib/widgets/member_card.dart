import 'package:flutter/material.dart';
import '../theme/colors.dart';

class MemberCard extends StatelessWidget {
  const MemberCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            blurRadius: 12,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/nse.png", height: 28),

          const SizedBox(width: 24),

          Container(width: 1, height: 24, color: Colors.grey.shade300),

          const SizedBox(width: 24),

          Transform.translate(
            offset: const Offset(0, -7),
            child: Image.asset("assets/images/bse.png", height: 48),
          ),
        ],
      ),
    );
  }
}
