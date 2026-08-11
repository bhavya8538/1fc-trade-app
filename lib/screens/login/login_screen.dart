import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme/colors.dart';
import '../../widgets/login_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final h = size.height;
    final w = size.width;

    final double loginFieldWidth = w * 0.60;
   return Scaffold(
  resizeToAvoidBottomInset: false,
  backgroundColor: const Color(0xFFF4F4ED),
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
              right: -70,
              top: h * .025,
              child: Image.asset("assets/images/mascot4.png", height: h * .50),
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
                    Row(
                      children: [
                        Image.asset("assets/images/logo.png", width: w * .22),

                        const Spacer(),
                      ],
                    ),

                    const SizedBox(height: 30),
                    Text(
                      "1FC Securities Pvt. Ltd.",
                      style: GoogleFonts.poppins(
                        fontSize: 21,
                        fontWeight: FontWeight.w800,
                        color: AppColors.primary,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      "Trade Smart, Pay Less",
                      style: TextStyle(
                        fontSize: 15,
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "₹1 Brokerage*",
                      style: TextStyle(
                        letterSpacing: 0.8,
                        fontSize: 12,
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
                    const SizedBox(height: 5),

                    SizedBox(
                      width: loginFieldWidth,
                      child: LoginField(
                        hint: "User ID",
                        icon: "assets/icons/user.png",
                        suffix: const Icon(
                          Icons.badge_outlined,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: loginFieldWidth,
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

                    /// OTP
                    Row(
                      children: [
                        SizedBox(
                          width: loginFieldWidth,
                          child: LoginField(
                            hint: "OTP / TOTP",
                            icon: "assets/icons/security.png",
                          ),
                        ),

                        const SizedBox(width: 10),

                        SizedBox(
                          width: 108,
                          height: 52,
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              foregroundColor: AppColors.primary,
                              side: const BorderSide(color: AppColors.primary),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              padding: EdgeInsets.zero,
                            ),
                            child: const Text(
                              "Get OTP",
                              textAlign: TextAlign.center,
                            ),
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

                    // Center(
                    //   child: Row(
                    //     children: [
                    //       Expanded(
                    //         child: Align(
                    //           alignment: Alignment.centerRight,
                    //           child: TextButton(
                    //             onPressed: () {},
                    //             style: TextButton.styleFrom(
                    //               foregroundColor:
                    //                   Colors.black, // <-- Text color
                    //               padding: EdgeInsets.zero,
                    //               minimumSize: Size.zero,
                    //               tapTargetSize:
                    //                   MaterialTapTargetSize.shrinkWrap,
                    //               visualDensity: VisualDensity.compact,
                    //             ),
                    //             child: const Text(
                    //               "Privacy Policy",
                    //               style: TextStyle(
                    //                 color: Colors.black,
                    //                 fontSize: 12,
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //       ),

                    //       const Padding(
                    //         padding: EdgeInsets.symmetric(horizontal: 10),
                    //         child: Text("|"),
                    //       ),

                    //       Expanded(
                    //         child: Align(
                    //           alignment: Alignment.centerLeft,
                    //           child: TextButton(
                    //             onPressed: () {},
                    //             style: TextButton.styleFrom(
                    //               foregroundColor: Colors.black,
                    //               padding: EdgeInsets.zero,
                    //               minimumSize: Size.zero,
                    //               tapTargetSize:
                    //                   MaterialTapTargetSize.shrinkWrap,
                    //               visualDensity: VisualDensity.compact,
                    //             ),
                    //             child: const Text(
                    //               "Terms & Conditions",
                    //               style: TextStyle(
                    //                 color: Colors.black,
                    //                 fontSize: 12,
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    const SizedBox(height: 11),
                    const Center(
                      child: Text(
                        "NSE   |   BSE  |  SEBI  •  INZ000333130",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 11,
                          letterSpacing: 0.8,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          height: 1.4,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Center(
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 12,
                          ),
                          children: [
                            TextSpan(
                              text: "* ",
                              style: TextStyle(
                                color: AppColors.primary,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            TextSpan(text: "₹1 per Trade in Cash and F&O"),
                          ],
                        ),
                      ),
                    ),
                    
                    const SizedBox(height: 30),
                    const Center(
                      child: Text(
                        "© 2026 1FC Securities Pvt. Ltd. All Rights Reserved.",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          letterSpacing: 0.9,
                        ),
                      ),
                    ),

                    // const SizedBox(height: 4),
                    const Center(
                      child: Text(
                        "Version 1.0.0",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          letterSpacing: 0.7,
                        ),
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
}
