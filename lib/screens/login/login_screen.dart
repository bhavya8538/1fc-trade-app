import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme/colors.dart';
import '../../widgets/login_field.dart';
import '../../widgets/member_card.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final h = size.height;
    final w = size.width;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Stack(
          children: [
            /// Background Graph
            Positioned(
              right: -100,
              top: 120,
              child: Opacity(
                opacity: .07,
                child: Icon(
                  Icons.show_chart,
                  size: 350,
                  color: AppColors.primary,
                ),
              ),
            ),

            /// Mascot
            Positioned(
              right: 3,
              top: h * .02,
              child: Image.asset("assets/images/mascot1.png", height: h * .50),
            ),

            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 22,
                  vertical: 18,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Header
                    Row(
                      children: [
                        Image.asset("assets/images/logo.png", width: w * .18),

                        const Spacer(),

                        // Column(
                        //   crossAxisAlignment: CrossAxisAlignment.end,
                        //   children: [
                        //     Text(
                        //       "Invest. Trade.",
                        //       style: TextStyle(
                        //         fontSize: w * .04,
                        //         fontWeight: FontWeight.w500,
                        //       ),
                        //     ),

                        //     Text(
                        //       "Grow with Confidence.",
                        //       style: TextStyle(
                        //         color: AppColors.primary,
                        //         fontSize: w * .04,
                        //         fontWeight: FontWeight.bold,
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),

                    const SizedBox(height: 15),
                    Text(
                      "1FC Securities Pvt. Ltd.",
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        color: AppColors.primary,
                      ),
                    ),
                    Text(
                      "₹1 Brokerage*",
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 50), // <-- Sirf yaha gap add karo

                    Text(
                      "Welcome Back!",
                      style: TextStyle(
                        fontSize: w * .06,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // const SizedBox(height: 8),
                    Text(
                      "Login to your trading account",
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),

                    SizedBox(height: h * .02, width: w * 0.2),

                    // Align(
                    //   alignment: Alignment.centerLeft,
                    //   child: SizedBox(
                    //     width:
                    //         w *
                    //         0.72, // adjust: 0.65 - 0.80 according to your design
                    //     child: const MemberCard(),
                    //   ),
                    // ),
                    const SizedBox(height: 50),

                    Row(
                      children: [
                        Expanded(
                          child: LoginField(
                            hint: "User ID",
                            icon: "assets/icons/user.png",
                            suffix: const Icon(
                              Icons.badge_outlined,
                              color: Colors.grey,
                            ),
                          ),
                        ),

                        const SizedBox(width: 10),

                        const SizedBox(
                          width: 110, // EXACTLY same width as Get OTP button
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: LoginField(
                            hint: "Password",
                            icon: "assets/icons/padlock.png",
                            obscure: true,
                            suffix: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Image.asset(
                                "assets/icons/show.png",
                                width: 18,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(width: 10),

                        const SizedBox(width: 110),
                      ],
                    ),

                    /// OTP
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 58,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(color: AppColors.border),
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.security,
                                  color: AppColors.primary,
                                ),
                                hintText: "OTP / TOTP",
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(width: 10),

                        SizedBox(
                          height: 58,
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              foregroundColor: AppColors.primary,
                              side: const BorderSide(color: AppColors.primary),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: const Text("Get OTP"),
                          ),
                        ),
                      ],
                    ),

                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(color: AppColors.primary),
                        ),
                      ),
                    ),

                    // const SizedBox(height: 0),
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.arrow_forward_rounded,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Expanded(child: Divider()),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          child: Text(
                            "OR",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Expanded(child: Divider()),
                      ],
                    ),

                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: AppColors.primary,
                          side: const BorderSide(color: AppColors.primary),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        child: const Text(
                          "Open New Account",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),

                    // const SizedBox(height: 30),

                    // Row(
                    //   children: [
                    //     Expanded(
                    //       child: _securityCard(
                    //         Icons.lock_outline,
                    //         "256-bit\nEncryption",
                    //       ),
                    //     ),

                    //     const SizedBox(width: 10),

                    //     Expanded(
                    //       child: _securityCard(
                    //         Icons.verified_user_outlined,
                    //         "Secure &\nReliable",
                    //       ),
                    //     ),

                    // const SizedBox(width: 10),

                    //     Expanded(
                    //       child: _securityCard(
                    //         Icons.bolt_outlined,
                    //         "Fast &\nSimple",
                    //       ),
                    //     ),
                    //   ],
                    // ),

                    // const SizedBox(height: 28),

                    // const SizedBox(height: 12),

                    // const Divider(),
                    const SizedBox(height: 1),

                    Center(
                      child: Row(
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  foregroundColor:
                                      Colors.black, // <-- Text color
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  visualDensity: VisualDensity.compact,
                                ),
                                child: const Text(
                                  "Privacy Policy",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text("|"),
                          ),

                          Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.black,
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  visualDensity: VisualDensity.compact,
                                ),
                                child: const Text(
                                  "Terms & Conditions",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 11),
                    const Center(
                      child: Text(
                        "NSE Member Code: 90120 | BSE Member Code: 6694\n"
                        "SEBI Regn. No.: INZ000158323",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          height: 1.4,
                        ),
                      ),
                    ),

                    const SizedBox(height: 8),
                    const Center(
                      child: Text(
                        "© 2026 1FC Securities Pvt. Ltd. All Rights Reserved.",
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                    ),

                    // const SizedBox(height: 4),
                    const Center(
                      child: Text(
                        "Version 1.0.0",
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _securityCard(IconData icon, String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        children: [
          Icon(icon, color: AppColors.primary, size: 28),

          // const SizedBox(height: 10),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
