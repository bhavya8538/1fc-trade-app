import 'package:flutter/material.dart';

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
              right: 15,
              top: h * .11,
              child: Image.asset("assets/images/mascot1.png", height: h * .31),
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

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Invest. Trade.",
                              style: TextStyle(
                                fontSize: w * .04,
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                            Text(
                              "Grow with Confidence.",
                              style: TextStyle(
                                color: AppColors.primary,
                                fontSize: w * .04,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 8),
                    Text(
                      "1FC SECURITIES PVT. LTD.",
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 60), // <-- Sirf yaha gap add karo

                    Text(
                      "Welcome Back!",
                      style: TextStyle(
                        fontSize: w * .08,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    Text(
                      "Login to your trading account",
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),

                    SizedBox(height: h * .08),

                    const MemberCard(),

                    const SizedBox(height: 25),

                    LoginField(
                      hint: "User ID",
                      icon: "assets/icons/user.png",
                      suffix: const Icon(
                        Icons.badge_outlined,
                        color: Colors.grey,
                      ),
                    ),

                    LoginField(
                      hint: "Password",
                      icon: "assets/icons/padlock.png",
                      obscure: true,
                      suffix: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Image.asset("assets/icons/show.png", width: 18),
                      ),
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

                    const SizedBox(height: 8),

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

                    const SizedBox(height: 8),
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

                    const SizedBox(height: 18),

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

                    const SizedBox(height: 18),

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

                    const SizedBox(height: 30),

                    Row(
                      children: [
                        Expanded(
                          child: _securityCard(
                            Icons.lock_outline,
                            "256-bit\nEncryption",
                          ),
                        ),

                        const SizedBox(width: 10),

                        Expanded(
                          child: _securityCard(
                            Icons.verified_user_outlined,
                            "Secure &\nReliable",
                          ),
                        ),

                        const SizedBox(width: 10),

                        Expanded(
                          child: _securityCard(
                            Icons.bolt_outlined,
                            "Fast &\nSimple",
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 28),

                    const SizedBox(height: 12),

                    const Divider(),

                    const SizedBox(height: 10),

                    Center(
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Privacy Policy",
                              style: TextStyle(
                                color: AppColors.primary,
                                fontSize: 12,
                              ),
                            ),
                          ),

                          const Text("|"),

                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Terms & Conditions",
                              style: TextStyle(
                                color: AppColors.primary,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 4),

                    const Center(
                      child: Text(
                        "© 2026 1FC Trade. All Rights Reserved.",
                        style: TextStyle(color: Colors.grey, fontSize: 11),
                      ),
                    ),

                    const SizedBox(height: 4),

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
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        children: [
          Icon(icon, color: AppColors.primary, size: 28),

          const SizedBox(height: 10),

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
