import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const TaskyApp());
}

class TaskyApp extends StatelessWidget {
  const TaskyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Tasky', home: const WelcomePage());
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7659C2),
      body: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 130),
            child: SizedBox(
              width: 342,
              child: Column(
                children: [
                  // Logo
                  Image.asset('assets/logo.png', width: 290, height: 137),

                  const SizedBox(height: 56),

                  // Quote
                  const SizedBox(
                    width: 342,
                    child: Text(
                      'იპოვე ადამიანი, ვინც\nშენს საქმეს გააკეთებს',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'GLVenuri',
                        color: Color(0xCCFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),

                  const SizedBox(height: 56),

                  // Register button
                  SizedBox(
                    width: 342,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF573F95),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 10,
                        padding: const EdgeInsets.all(16),
                      ),
                      child: const Text(
                        'რეგისტრაცია',
                        style: TextStyle(
                          fontFamily: 'GLVenuri',
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Login button
                  SizedBox(
                    width: 342,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF9AC76D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 10,
                        padding: const EdgeInsets.all(16),
                      ),
                      child: const Text(
                        'შესვლა',
                        style: TextStyle(
                          fontFamily: 'GLVenuri',
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
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
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            // Back button
            Positioned(
              top: 16,
              left: 24,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset('assets/back.png', width: 40, height: 40),
              ),
            ),

            // Tasky logo
            Positioned(
              top: 16,
              left: 0,
              right: 0,
              child: Center(
                child: Image.asset(
                  'assets/tasky.png',
                  width: 70,
                  height: 35,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // Login content
            Positioned(
              top: 136,
              left: 24,
              child: SizedBox(
                width: 342,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    const Center(
                      child: Text(
                        'ელ.ფოსტით შესვლა',
                        style: TextStyle(
                          fontFamily: 'GLVenuri',
                          color: Color(0xFF573F95),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    const SizedBox(height: 32),

                    // EMAIL LABEL
                    const Text(
                      'ელ.ფოსტა',
                      style: TextStyle(
                        fontFamily: 'GLVenuri',
                        color: Color(0xFF573F95),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const SizedBox(height: 8),

                    // EMAIL BOX
                    SizedBox(
                      width: 342,
                      height: 56,
                      child: TextField(
                        style: const TextStyle(
                          fontFamily: 'GLVenuri',
                          color: Color(0xFF573F95),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          hintText: 'შეიყვანეთ ელ.ფოსტა',
                          hintStyle: const TextStyle(
                            fontFamily: 'GLVenuri',
                            color: Color(0xFF7659C2),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 16,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color(0xFF7659C2),
                              width: 1,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color(0xFF7659C2),
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color(0xFF7659C2),
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    // PASSWORD LABEL
                    const Text(
                      'პაროლი',
                      style: TextStyle(
                        fontFamily: 'GLVenuri',
                        color: Color(0xFF573F95),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const SizedBox(height: 8),

                    // PASSWORD BOX
                    SizedBox(
                      width: 342,
                      height: 56,
                      child: TextField(
                        obscureText: true,
                        style: const TextStyle(
                          fontFamily: 'GLVenuri',
                          color: Color(0xFF573F95),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          hintText: 'შეიყვანეთ პაროლი',
                          hintStyle: const TextStyle(
                            fontFamily: 'GLVenuri',
                            color: Color(0xFF7659C2),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          suffixIcon: const Icon(
                            Icons.visibility_outlined,
                            color: Color(0xFF7659C2),
                            size: 24,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 16,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color(0xFF7659C2),
                              width: 1,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color(0xFF7659C2),
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color(0xFF7659C2),
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Forgot password
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ForgotPasswordPage(),
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: const Text(
                          'დაგავიწყდათ პაროლი?',
                          style: TextStyle(
                            fontFamily: 'GLVenuri',
                            color: Color(0xFF573F95),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // CONTINUE BUTTON
                    SizedBox(
                      width: 342,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF7659C2),
                          foregroundColor: Colors.white,
                          elevation: 10,
                          padding: const EdgeInsets.all(16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'გაგრძელება',
                          style: TextStyle(
                            fontFamily: 'GLVenuri',
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 8),

                    // REGISTER
                    Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'არ გაქვთ ანგარიში?',
                            style: TextStyle(
                              fontFamily: 'GLVenuri',
                              color: Color(0xFF573F95),
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RegisterPage(),
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.only(left: 4),
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: const Text(
                              'რეგისტრაცია',
                              style: TextStyle(
                                fontFamily: 'GLVenuri',
                                color: Color(0xFF573F95),
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
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

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  // This stores whatever the user types into the email box.
  final TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 24),

              // Top bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/back.png',
                        width: 40,
                        height: 40,
                      ),
                    ),

                    const Spacer(),

                    Image.asset('assets/tasky.png', width: 70),

                    const Spacer(),

                    const SizedBox(width: 40),
                  ],
                ),
              ),

              const SizedBox(height: 90),

              SizedBox(
                width: 342,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        'დაგავიწყდათ პაროლი?',
                        style: TextStyle(
                          fontFamily: 'GLVenuri',
                          fontSize: 20,
                          color: Color(0xFF573F95),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    const SizedBox(height: 40),

                    const Text(
                      'ელ.ფოსტა',
                      style: TextStyle(
                        fontFamily: 'GLVenuri',
                        fontSize: 16,
                        color: Color(0xFF573F95),
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const SizedBox(height: 8),

                    // Email input
                    TextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(
                        fontFamily: 'GLVenuri',
                        color: Color(0xFF573F95),
                      ),
                      decoration: InputDecoration(
                        hintText: 'შეიყვანეთ ელ.ფოსტა',
                        hintStyle: const TextStyle(
                          fontFamily: 'GLVenuri',
                          color: Color(0xFF8B72C8),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xFF7659C2),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xFF7659C2),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 32),

                    SizedBox(
                      width: 342,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VerificationCodePage(
                                email: emailController.text,
                              ),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF7659C2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 10,
                        ),
                        child: const Text(
                          'კოდის გაგზავნა',
                          style: TextStyle(
                            fontFamily: 'GLVenuri',
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VerificationCodePage extends StatefulWidget {
  final String email;

  const VerificationCodePage({super.key, required this.email});

  @override
  State<VerificationCodePage> createState() => _VerificationCodePageState();
}

class _VerificationCodePageState extends State<VerificationCodePage> {
  // Starts at 59 seconds
  int secondsRemaining = 59;

  Timer? timer;

  // One focus node for each code box
  final List<FocusNode> codeFocusNodes =
      List.generate(6, (index) => FocusNode());

  @override
  void initState() {
    super.initState();

    // Start the countdown when the page opens
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (secondsRemaining > 0) {
        setState(() {
          secondsRemaining--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();

    // Dispose all focus nodes
    for (final node in codeFocusNodes) {
      node.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 24),

              // Top bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/back.png',
                        width: 40,
                        height: 40,
                      ),
                    ),

                    const Spacer(),

                    Image.asset('assets/tasky.png', width: 70),

                    const Spacer(),

                    const SizedBox(width: 40),
                  ],
                ),
              ),

              const SizedBox(height: 72),

              // Main content
              SizedBox(
                width: 342,
                child: Column(
                  children: [
                    // Title
                    const Text(
                      'შეიყვანეთ ვერიფიკაციის კოდი',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'GLVenuri',
                        color: Color(0xFF573F95),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const SizedBox(height: 28),

                    // Explanation
                    const Text(
                      'ვერიფიკაციის 6 ნიშნიანი კოდი\n'
                      'გამოგზავნილია ელ.ფოსტაზე:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'GLVenuri',
                        color: Color(0xFF7659C2),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    const SizedBox(height: 12),

                    // The email the user actually entered
                    Text(
                      widget.email,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily: 'GLVenuri',
                        color: Color(0xFF573F95),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    const SizedBox(height: 40),

                    // Code boxes
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(6, (index) {
                        return SizedBox(
                          width: 50,
                          height: 60,
                          child: TextField(
                            // Connect this box to its FocusNode
                            focusNode: codeFocusNodes[index],

                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            maxLength: 1,

                            // Move to the next box after typing
                            onChanged: (value) {
                              if (value.isNotEmpty && index < 5) {
                                FocusScope.of(context).requestFocus(
                                  codeFocusNodes[index + 1],
                                );
                              }
                            },

                            style: const TextStyle(
                              fontFamily: 'GLVenuri',
                              color: Color(0xFF573F95),
                              fontSize: 20,
                            ),

                            decoration: InputDecoration(
                              counterText: '',
                              filled: true,
                              fillColor: const Color(0xFFF1ECFA),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Color(0xFF7659C2),
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Color(0xFF7659C2),
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),

                    const SizedBox(height: 44),

                    // Resend
                    const Text(
                      'არ მიგიღიათ კოდი? თავიდან გაგზავნა',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'GLVenuri',
                        color: Color(0xFF7659C2),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Countdown timer
                    Text(
                      '0:${secondsRemaining.toString().padLeft(2, '0')}',
                      style: const TextStyle(
                        fontFamily: 'GLVenuri',
                        color: Color(0xFF573F95),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    const SizedBox(height: 48),

                    // Continue button
                    SizedBox(
                      width: 342,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const NewPasswordPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF7659C2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 10,
                          padding: const EdgeInsets.all(16),
                        ),
                        child: const Text(
                          'გაგრძელება',
                          style: TextStyle(
                            fontFamily: 'GLVenuri',
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  bool obscurePassword = true;
  bool obscureConfirmPassword = true;

  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 24),

              // Top bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/back.png',
                        width: 40,
                        height: 40,
                      ),
                    ),

                    const Spacer(),

                    Image.asset('assets/tasky.png', width: 70),

                    const Spacer(),

                    const SizedBox(width: 40),
                  ],
                ),
              ),

              const SizedBox(height: 72),

              // Main content
              SizedBox(
                width: 342,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    const Center(
                      child: Text(
                        'შეიყვანეთ ახალი პაროლი',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'GLVenuri',
                          color: Color(0xFF573F95),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    const SizedBox(height: 60),

                    // New password label
                    const Text(
                      'ახალი პაროლი',
                      style: TextStyle(
                        fontFamily: 'GLVenuri',
                        color: Color(0xFF573F95),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const SizedBox(height: 8),

                    // New password field
                    SizedBox(
                      width: 342,
                      height: 46,
                      child: TextField(
                        obscureText: obscurePassword,
                        onChanged: (value) {
                          setState(() {
                            password = value;
                          });
                        },
                        style: const TextStyle(
                          fontFamily: 'GLVenuri',
                          color: Color(0xFF573F95),
                        ),
                        decoration: InputDecoration(
                          hintText: 'შეიყვანეთ პაროლი',
                          hintStyle: const TextStyle(
                            fontFamily: 'GLVenuri',
                            color: Color(0xFF8B72C8),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                obscurePassword = !obscurePassword;
                              });
                            },
                            icon: Icon(
                              obscurePassword
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              color: const Color(0xFF7659C2),
                            ),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color(0xFF7659C2),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color(0xFF7659C2),
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 6),

                    // Password strength bar
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 4,
                            decoration: BoxDecoration(
                              color: password.isEmpty
                                  ? Colors.grey.shade300
                                  : const Color(0xFF7659C2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 6),

                    // Password strength text
                    Text(
                      password.isEmpty
                          ? 'სუსტი'
                          : password.length < 6
                          ? 'სუსტი'
                          : password.length < 10
                          ? 'საშუალო'
                          : 'ძლიერი',
                      style: const TextStyle(
                        fontFamily: 'GLVenuri',
                        color: Color(0xFF7659C2),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    const SizedBox(height: 32),

                    // Confirm password label
                    const Text(
                      'დაადასტურეთ პაროლი',
                      style: TextStyle(
                        fontFamily: 'GLVenuri',
                        color: Color(0xFF573F95),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const SizedBox(height: 8),

                    // Confirm password field
                    SizedBox(
                      width: 342,
                      height: 46,
                      child: TextField(
                        obscureText: obscureConfirmPassword,
                        style: const TextStyle(
                          fontFamily: 'GLVenuri',
                          color: Color(0xFF573F95),
                        ),
                        decoration: InputDecoration(
                          hintText: 'გაიმეორეთ პაროლი',
                          hintStyle: const TextStyle(
                            fontFamily: 'GLVenuri',
                            color: Color(0xFF8B72C8),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                obscureConfirmPassword =
                                    !obscureConfirmPassword;
                              });
                            },
                            icon: Icon(
                              obscureConfirmPassword
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              color: const Color(0xFF7659C2),
                            ),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color(0xFF7659C2),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color(0xFF7659C2),
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 64),

                    // Continue button
                    SizedBox(
                      width: 342,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SuccessPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF7659C2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 10,
                          padding: const EdgeInsets.all(16),
                        ),
                        child: const Text(
                          'გაგრძელება',
                          style: TextStyle(
                            fontFamily: 'GLVenuri',
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Register page
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF573F95),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'გაიარეთ რეგისტრაცია',
              style: TextStyle(
                fontFamily: 'GLVenuri',
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),

            const SizedBox(height: 30),

            // Email
            SizedBox(
              width: 300,
              child: TextField(
                style: const TextStyle(
                  fontFamily: 'GLVenuri',
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  labelText: 'ელ-პოსტა',
                  labelStyle: const TextStyle(
                    fontFamily: 'GLVenuri',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF9AC76D), width: 1),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 15),

            // Password
            SizedBox(
              width: 300,
              child: TextField(
                obscureText: true,
                style: const TextStyle(
                  fontFamily: 'GLVenuri',
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  labelText: 'პაროლი',
                  labelStyle: const TextStyle(
                    fontFamily: 'GLVenuri',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF9AC76D), width: 1),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Create account button
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'დარეგისტრირება',
                style: TextStyle(
                  fontFamily: 'GLVenuri',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 24),

              // Top bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/back.png',
                        width: 40,
                        height: 40,
                      ),
                    ),

                    const Spacer(),

                    Image.asset('assets/tasky.png', width: 70),

                    const Spacer(),

                    const SizedBox(width: 40),
                  ],
                ),
              ),

              const SizedBox(height: 70),

              // Success message
              SizedBox(
                width: 342,
                child: Column(
                  children: [
                    const Text(
                      'თქვენი პაროლი\nგანახლებულია!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'GLVenuri',
                        color: Color(0xFF7659C2),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const SizedBox(height: 48),

                    // Tick
                    Image.asset('assets/tick.png', width: 150, height: 150),

                    const SizedBox(height: 58),

                    // Continue button
                    SizedBox(
                      width: 342,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF7659C2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 10,
                          padding: const EdgeInsets.all(16),
                        ),
                        child: const Text(
                          'შესვლა',
                          style: TextStyle(
                            fontFamily: 'GLVenuri',
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'თქვენ წარმატებით გაიარეთ რეგისტრაცია!',
          style: TextStyle(fontFamily: 'GLVenuri', fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
