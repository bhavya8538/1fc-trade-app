import 'package:flutter/material.dart';

import '../../theme/colors.dart';

class DesktopLogin extends StatefulWidget {
  const DesktopLogin({super.key});

  @override
  State<DesktopLogin> createState() => _DesktopLoginState();
}

class _DesktopLoginState extends State<DesktopLogin> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    final isDark = Theme.of(context).brightness == Brightness.dark;

    final backgroundColor = isDark
        ? const Color(0xFF071F1D)
        : const Color(0xFFF4F4ED);

    final cardColor = Colors.white;

    final textColor = isDark
        ? const Color(0xFFF5F7F6)
        : const Color(0xFF1E1E1E);

    final secondaryTextColor = isDark ? const Color(0xFFA8B5B2) : Colors.grey;

    final borderColor = isDark
        ? const Color(0xFF31504B)
        : const Color(0xFFE2E2DC);

    final primaryColor = isDark ? const Color(0xFF00A67D) : AppColors.primary;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            /// TOP BAR
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 22),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    width: 115,
                    height: 65,
                    fit: BoxFit.contain,
                  ),

                  const Spacer(),

                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "About Us",
                      style: TextStyle(color: textColor, fontSize: 14),
                    ),
                  ),

                  const SizedBox(width: 25),

                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Support",
                      style: TextStyle(color: textColor, fontSize: 14),
                    ),
                  ),

                  const SizedBox(width: 25),

                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: AppColors.primary,
                      side: BorderSide(color: primaryColor),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 22,
                        vertical: 13,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text("Back to Website"),
                  ),
                ],
              ),
            ),

            /// MAIN CONTENT
            Expanded(
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1250),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    child: Row(
                      children: [
                        /// LEFT BRANDING PANEL
                        Expanded(
                          flex: 5,
                          child: Container(
                            height: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  AppColors.primary,
                                  AppColors.primary.withValues(alpha: 0.82),
                                ],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.primary.withValues(
                                    alpha: 0.18,
                                  ),
                                  blurRadius: 30,
                                  offset: const Offset(0, 15),
                                ),
                              ],
                            ),
                            child: Stack(
                              children: [
                                /// Decorative circles
                                Positioned(
                                  right: -120,
                                  top: -100,
                                  child: Container(
                                    width: 330,
                                    height: 330,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white.withValues(
                                        alpha: .06,
                                      ),
                                    ),
                                  ),
                                ),

                                Positioned(
                                  left: -100,
                                  bottom: -120,
                                  child: Container(
                                    width: 300,
                                    height: 300,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white.withValues(
                                        alpha: .05,
                                      ),
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 45,
                                    vertical: 35,
                                  ),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 10),

                                      // MASCOT + TEXT SIDE BY SIDE
                                      Expanded(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            // =========================
                                            // MASCOT - LEFT
                                            // =========================
                                            Expanded(
                                              flex: 6,
                                              child: Transform.scale(
                                                scale: 1.25,
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Image.asset(
                                                  "assets/images/mascot4.png",
                                                  fit: BoxFit.contain,
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                ),
                                              ),
                                            ),

                                            const SizedBox(width: 15),

                                            // =========================
                                            // TEXT - RIGHT
                                            // =========================
                                            Expanded(
                                              flex: 4,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    "Trade Smarter.",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 40,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      height: 1.05,
                                                      letterSpacing: -0.8,
                                                    ),
                                                  ),

                                                  const SizedBox(height: 6),

                                                  Text(
                                                    "Invest Better.",
                                                    style: TextStyle(
                                                      color: Colors.white
                                                          .withValues(
                                                            alpha: .78,
                                                          ),
                                                      fontSize: 40,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      height: 1.05,
                                                      letterSpacing: -0.8,
                                                    ),
                                                  ),

                                                  const SizedBox(height: 20),

                                                  Container(
                                                    width: 65,
                                                    height: 4,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            10,
                                                          ),
                                                    ),
                                                  ),

                                                  const SizedBox(height: 20),

                                                  Text(
                                                    "Your gateway to smarter trading\n"
                                                    "and investing with 1FC Securities.",
                                                    style: TextStyle(
                                                      color: Colors.white
                                                          .withValues(
                                                            alpha: .75,
                                                          ),
                                                      fontSize: 15,
                                                      height: 1.6,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      const SizedBox(height: 20),

                                      // =========================
                                      // BOTTOM FEATURES
                                      // =========================
                                      Row(
                                        children: [
                                          _infoItem(
                                            Icons.currency_rupee,
                                            "₹1 Brokerage",
                                          ),

                                          const SizedBox(width: 35),

                                          _infoItem(
                                            Icons.security_outlined,
                                            "Secure Trading",
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(width: 30),

                        /// LOGIN PANEL
                        Expanded(
                          flex: 4,
                          child: Center(
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 470),
                              child: SingleChildScrollView(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 42,
                                    vertical: 36,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(24),
                                    border: Border.all(color: borderColor),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withValues(
                                          alpha: 0.06,
                                        ),
                                        blurRadius: 30,
                                        offset: const Offset(0, 12),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Center(
                                      //   child: Image.asset(
                                      //     "assets/images/logo.png",
                                      //     width: 100,
                                      //     height: 60,
                                      //     fit: BoxFit.contain,
                                      //   ),
                                      // ),

                                      // const SizedBox(height: 20),
                                      Text(
                                        "Welcome Back!",
                                        style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: -0.5,
                                          color: Colors.black,
                                        ),
                                      ),

                                      const SizedBox(height: 5),

                                      const Text(
                                        "Login to your trading account",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          letterSpacing: 0.2,
                                        ),
                                      ),

                                      const SizedBox(height: 30),

                                      _label("User ID"),

                                      _field(
                                        hint: "Enter your User ID",
                                        icon: Icons.person_outline,
                                      ),

                                      const SizedBox(height: 18),

                                      _label("Password"),

                                      _field(
                                        hint: "Enter your password",
                                        icon: Icons.lock_outline,
                                        obscure: _obscurePassword,
                                        suffix: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              _obscurePassword =
                                                  !_obscurePassword;
                                            });
                                          },
                                          icon: Icon(
                                            _obscurePassword
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),

                                      const SizedBox(height: 18),

                                      _label("OTP / TOTP"),

                                      Row(
                                        children: [
                                          Expanded(
                                            child: _field(
                                              hint: "Enter OTP / TOTP",
                                              icon: Icons.security_outlined,
                                            ),
                                          ),

                                          const SizedBox(width: 10),

                                          SizedBox(
                                            height: 54,
                                            child: OutlinedButton(
                                              onPressed: () {},
                                              style: OutlinedButton.styleFrom(
                                                foregroundColor:
                                                    AppColors.primary,
                                                side: const BorderSide(
                                                  color: AppColors.primary,
                                                ),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(14),
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
                                            style: TextStyle(
                                              color: AppColors.primary,
                                            ),
                                          ),
                                        ),
                                      ),

                                      const SizedBox(height: 8),

                                      SizedBox(
                                        width: double.infinity,
                                        height: 54,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: AppColors.primary,
                                            foregroundColor: Colors.white,
                                            elevation: 0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(14),
                                            ),
                                          ),
                                          child: const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Login",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Icon(
                                                Icons.arrow_forward,
                                                size: 19,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),

                                      const SizedBox(height: 22),

                                      Row(
                                        children: [
                                          const Expanded(child: Divider()),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 14,
                                            ),
                                            child: Text(
                                              "OR",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                          const Expanded(child: Divider()),
                                        ],
                                      ),

                                      const SizedBox(height: 22),

                                      SizedBox(
                                        width: double.infinity,
                                        height: 54,
                                        child: OutlinedButton(
                                          onPressed: () {},
                                          style: OutlinedButton.styleFrom(
                                            foregroundColor: AppColors.primary,
                                            side: const BorderSide(
                                              color: AppColors.primary,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(14),
                                            ),
                                          ),
                                          child: const Text(
                                            "Open New Account",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                      const SizedBox(height: 25),
                                      const SizedBox(height: 20),

                                      // Pricing
                                      const Center(
                                        child: Text(
                                          "* ₹1 per trade • Cash & F&O",
                                          style: TextStyle(
                                            color: AppColors.primary,
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.4,
                                          ),
                                        ),
                                      ),

                                      const SizedBox(height: 4),

                                      // Regulatory information
                                      const Center(
                                        child: Text(
                                          "NSE 90120  •  BSE 6694  •  SEBI INZ000158323",
                                          style: TextStyle(
                                            color: Color(0xFF999999),
                                            fontSize: 11,
                                            letterSpacing: 0.6,
                                          ),
                                        ),
                                      ),

                                      const SizedBox(height: 14),

                                      // Copyright
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            "© 2026 1FC Securities Pvt. Ltd.",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 11,
                                              letterSpacing: .3,
                                            ),
                                          ),

                                          const SizedBox(width: 12),

                                          Container(
                                            width: 1,
                                            height: 12,
                                            color: Colors.grey.shade300,
                                          ),

                                          const SizedBox(width: 12),

                                          const Text(
                                            "v1.0.0",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 9,
                                              letterSpacing: .3,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _label(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 3, bottom: 7),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: Color(0xFF444444),
        ),
      ),
    );
  }

  Widget _field({
    required String hint,
    required IconData icon,
    bool obscure = false,
    Widget? suffix,
  }) {
    return SizedBox(
      height: 54,
      child: TextField(
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
          prefixIcon: Icon(icon, color: AppColors.primary, size: 21),
          suffixIcon: suffix,
          filled: true,
          fillColor: const Color(0xFFF9F9F6),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: Color(0xFFE2E2DC)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: Color(0xFFE2E2DC)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: AppColors.primary, width: 1.5),
          ),
        ),
      ),
    );
  }

  Widget _infoItem(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.white, size: 19),
        const SizedBox(width: 7),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
