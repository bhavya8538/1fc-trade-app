import 'package:flutter/material.dart';
import '../theme/colors.dart';

class MemberCard extends StatelessWidget {
  const MemberCard({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Container(
      height: 78,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            blurRadius: 15,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: [

          /// NSE
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Image.asset(
                  "assets/images/nse.png",
                  height: 16,
                ),

                const SizedBox(height: 5),

                const Text(
                  "Member",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          Container(
            width: 1,
            height: 38,
            color: AppColors.border,
          ),

          /// BSE
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Image.asset(
                  "assets/images/bse.png",
                  height: 16,
                ),

                const SizedBox(height: 5),

                const Text(
                  "Member",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          Container(
            width: 1,
            height: 38,
            color: AppColors.border,
          ),

          /// SEBI
          Expanded(
            flex: 2,
            child: Row(
              children: [

                Container(
                  width: 34,
                  height: 34,
                  decoration: const BoxDecoration(
                    color: Color(0xffEAF8F2),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.verified_user,
                    size: 18,
                    color: AppColors.primary,
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        "SEBI Registered",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: w * .028,
                        ),
                      ),

                      const SizedBox(height: 3),

                      Text(
                        "INZ000333130",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: w * .026,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}