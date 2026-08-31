import 'package:flutter/material.dart';
import 'dart:async';

final ValueNotifier<Set<String>> bookmarkedTasks = ValueNotifier({});
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
  final List<FocusNode> codeFocusNodes = List.generate(
    6,
    (index) => FocusNode(),
  );

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
                                FocusScope.of(
                                  context,
                                ).requestFocus(codeFocusNodes[index + 1]);
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
                              builder: (context) => const NewPasswordPage(),
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

// =====================================================
// HOME PAGE
// =====================================================

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // =================================================
      // BODY
      // =================================================
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),

              // TOP BAR
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MenuPage(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/menu.png',
                      width: 24,
                      height: 24,
                    ),
                  ),

                  const Spacer(),

                  Image.asset('assets/tasky.png', width: 70),

                  const Spacer(),

                  Image.asset('assets/notification.png', width: 24, height: 24),
                ],
              ),

              const SizedBox(height: 16),

              // SEARCH BAR
              SizedBox(
                width: 342,
                height: 48,
                child: TextField(
                  style: const TextStyle(
                    fontFamily: 'Noto Sans Georgian',
                    color: Color(0xFF573F95),
                  ),
                  decoration: InputDecoration(
                    hintText: 'მოძებნე სასურველი დავალება...',
                    hintStyle: const TextStyle(
                      fontFamily: 'Noto Sans Georgian',
                      fontSize: 14,
                      color: Color(0xFF8B72C8),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset(
                        'assets/search.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                    filled: true,
                    fillColor: const Color(0xFFF1ECFA),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // LOCATION
              Row(
                children: [
                  Image.asset('assets/location.png', width: 24, height: 24),

                  const SizedBox(width: 3),

                  const Text(
                    'თბილისი',
                    style: TextStyle(
                      fontFamily: 'Noto Sans Georgian',
                      color: Color(0xFF573F95),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  const SizedBox(width: 8),

                  Image.asset('assets/arrowdown.png', width: 16, height: 16),
                ],
              ),

              const SizedBox(height: 16),

            // CATEGORIES TITLE
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    const Text(
      'კატეგორიები',
      style: TextStyle(
        fontFamily: 'Noto Sans Georgian',
        color: Color(0xFF573F95),
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),

    GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MoreCategoriesPage(),
          ),
        );
      },
      child: Row(
        children: [
          const Text(
            'ყველას ნახვა',
            style: TextStyle(
              fontFamily: 'Noto Sans Georgian',
              color: Color(0xFF7659C2),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),

          const SizedBox(width: 8),

          Image.asset(
            'assets/arrowright.png',
            width: 15,
            height: 15,
          ),
        ],
      ),
    ),
  ],
),

              const SizedBox(height: 16),

              // CATEGORIES
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _categoryButton('მიწოდება', 'assets/miwodeba.png'),

                    const SizedBox(width: 8),

                    _categoryButton('გადაზიდვა', 'assets/gadazidva.png'),

                    const SizedBox(width: 8),

                    _categoryButton(
                      'სასწავლო დახმარება',
                      'assets/educational.png',
                    ),

                    const SizedBox(width: 8),

                    _categoryButton('ხელოსანი', 'assets/xelosani.png'),
                  ],
                ),
              ),

              const SizedBox(height: 24),
// NEW TASKS TITLE
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    const Text(
      'ახალი დავალებები',
      style: TextStyle(
        fontFamily: 'Noto Sans Georgian',
        color: Color(0xFF573F95),
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),

    GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MoreTasksPage(),
          ),
        );
      },
      child: Row(
        children: [
          const Text(
            'ყველას ნახვა',
            style: TextStyle(
              fontFamily: 'Noto Sans Georgian',
              color: Color(0xFF7659C2),
              fontSize: 12,
            ),
          ),

          const SizedBox(width: 4),

          Image.asset(
            'assets/arrowright.png',
            width: 16,
            height: 16,
          ),
        ],
      ),
    ),
  ],
),

              const SizedBox(height: 16),

              // HOME CARD 1
              const TaskCard(
                image: 'assets/job1.png',
                title: 'კარადის აწყობა',
                location: 'ვაკე, თბილისი',
                time: 'დღეს, 15:00',
                price: '30₾',
                showBookmark: true,
              ),

              const SizedBox(height: 8),

              // HOME CARD 2
              const TaskCard(
                image: 'assets/job2.png',
                title: 'ყუთის გადატანა',
                location: 'დიდუბე, თბილისი',
                time: 'ხვალ, 11:00',
                price: '20₾',
                showBookmark: true,
              ),

              const SizedBox(height: 8),

              // HOME CARD 3
              const TaskCard(
                image: 'assets/job3.png',
                title: 'ძაღლის გასეირნება',
                location: 'საბურთალო, თბილისი',
                time: '2 მაისი, 18:00',
                price: '15₾',
                showBookmark: true,
              ),
            ],
          ),
        ),
      ),

      // =================================================
      // BOTTOM NAVIGATION
      // =================================================
      bottomNavigationBar: SizedBox(
        height: 96,
        child: BottomAppBar(
          color: const Color(0xFFE8E0F8),
          elevation: 0,
          padding: EdgeInsets.zero,
          child: Row(
            children: [
              // HOME
              Expanded(child: _bottomItem('assets/home.png', () {})),

              // TASKS
              Expanded(
                child: _bottomItem('assets/list.png', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TasksPage()),
                  );
                }),
              ),

              const SizedBox(width: 32),

              // PLUS BUTTON
              SizedBox(
                width: 68,
                height: 68,
                child: Center(
                  child: SizedBox(
                    width: 68,
                    height: 68,
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: const Color(0xFF7659C2),
                      elevation: 0,
                      shape: const CircleBorder(),
                      child: const Text(
                        '+',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 32),

              // CHAT
              Expanded(child: _bottomItem('assets/chat.png', () {})),

              // PROFILE
              Expanded(
                child: _bottomItem('assets/profile.png', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // =====================================================
  // CATEGORY BUTTON
  // =====================================================

  Widget _categoryButton(String text, String imagePath) {
    return Container(
      width: 79.5,
      height: 96,
      decoration: BoxDecoration(
        color: const Color(0xFFE8E0F8),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, width: 42, height: 42),

          const SizedBox(height: 6),

          SizedBox(
            width: 54,
            height: 32,
            child: Text(
              text,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontFamily: 'GLVenuri',
                color: Color(0xFF7659C2),
                fontSize: 10,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // =====================================================
  // BOTTOM NAV ITEM
  // =====================================================

  static Widget _bottomItem(String image, VoidCallback onTap) {
    return SizedBox(
      height: 96,
      child: Center(
        child: GestureDetector(
          onTap: onTap,
          child: Image.asset(image, width: 32, height: 32),
        ),
      ),
    );
  }
}

// =====================================================
// TASKS PAGE
// =====================================================

class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),

              // =================================================
              // TOP BAR
              // =================================================
              SizedBox(
                width: 342,
                height: 36,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MenuPage(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'assets/menu.png',
                        width: 24,
                        height: 24,
                      ),
                    ),

                    const Spacer(),

                    const SizedBox(
                      width: 170,
                      child: Text(
                        'დავალებები',
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        style: TextStyle(
                          fontFamily: 'GLVenuri',
                          color: Color(0xFF573F95),
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    const Spacer(),

                    Image.asset(
                      'assets/notification.png',
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // =================================================
              // TABS
              // =================================================
              SizedBox(
                width: 342,
                height: 48,
                child: Row(
                  children: [
                    Expanded(
                      child: _taskTab(
                        'ყველა',
                        '5',
                        selectedTab == 0,
                        const Color(0xFFD9CFF1),
                        () {
                          setState(() {
                            selectedTab = 0;
                          });
                        },
                      ),
                    ),

                    const SizedBox(width: 8),

                    Expanded(
                      child: _taskTab(
                        'მიმდინარე',
                        '2',
                        selectedTab == 1,
                        const Color(0xFFFFE9A8),
                        () {
                          setState(() {
                            selectedTab = 1;
                          });
                        },
                      ),
                    ),

                    const SizedBox(width: 8),

                    Expanded(
                      child: _taskTab(
                        'დასრულებული',
                        '3',
                        selectedTab == 2,
                        const Color(0xFFD8EFCB),
                        () {
                          setState(() {
                            selectedTab = 2;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // =================================================
              // SEARCH
              // =================================================
              SizedBox(
                width: 342,
                height: 48,
                child: TextField(
                  style: const TextStyle(
                    fontFamily: 'NotoSansGeorgian',
                    color: Color(0xFF573F95),
                    fontSize: 12,
                  ),
                  decoration: InputDecoration(
                    hintText: 'მოძებნე სასურველი დავალება...',
                    hintStyle: const TextStyle(
                      fontFamily: 'NotoSansGeorgian',
                      color: Color(0xFF7659C2),
                      fontSize: 14,
                    ),

                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Image.asset(
                        'assets/search.png',
                        width: 24,
                        height: 24,
                      ),
                    ),

                    filled: true,
                    fillColor: const Color(0x337659C2),
                    contentPadding: EdgeInsets.zero,

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // =================================================
              // TASK CARDS
              // =================================================
              if (selectedTab == 0 || selectedTab == 1)
                const TaskCard(
                  image: 'assets/job1.png',
                  title: 'კარადის აწყობა',
                  location: 'ვაკე, თბილისი',
                  time: 'დღეს, 15:00',
                  price: '30₾',
                  status: 'მიმდინარე',
                  showBookmark: false,
                ),

              if (selectedTab == 0 || selectedTab == 1)
                const SizedBox(height: 8),

              if (selectedTab == 0 || selectedTab == 1)
                const TaskCard(
                  image: 'assets/job2.png',
                  title: 'ყუთის გადატანა',
                  location: 'დიდუბე, თბილისი',
                  time: 'ხვალ, 11:00',
                  price: '25₾',
                  status: 'მიმდინარე',
                  showBookmark: false,
                ),

              if (selectedTab == 0) const SizedBox(height: 8),

              if (selectedTab == 0 || selectedTab == 2)
                const TaskCard(
                  image: 'assets/job3.png',
                  title: 'ძაღლის გასეირნება',
                  location: 'საბურთალო, თბილისი',
                  time: '2 მაისი, 18:00',
                  price: '15₾',
                  status: 'დასრულებული',
                  completed: true,
                  showBookmark: false,
                ),

              if (selectedTab == 0 || selectedTab == 2)
                const SizedBox(height: 8),

              if (selectedTab == 0 || selectedTab == 2)
                const TaskCard(
                  image: 'assets/job4.png',
                  title: 'პროდუქტების ყიდვა',
                  location: 'დიღომი, თბილისი',
                  time: '18 აპრილი, 12:00',
                  price: '20₾',
                  status: 'დასრულებული',
                  completed: true,
                  showBookmark: false,
                ),

              if (selectedTab == 0 || selectedTab == 2)
                const SizedBox(height: 8),

              if (selectedTab == 0 || selectedTab == 2)
                const TaskCard(
                  image: 'assets/job5.png',
                  title: 'ონკანის შეკეთება',
                  location: 'დიდუბე, თბილისი',
                  time: '5 აპრილი, 11:00',
                  price: '35₾',
                  status: 'დასრულებული',
                  completed: true,
                  showBookmark: false,
                ),
            ],
          ),
        ),
      ),

      // =================================================
      // BOTTOM NAVIGATION
      // =================================================
      bottomNavigationBar: SizedBox(
        height: 96,
        child: BottomAppBar(
          color: const Color(0xFFE8E0F8),
          elevation: 0,
          padding: EdgeInsets.zero,

          child: Row(
            children: [
              // HOME
              Expanded(
                child: _bottomIcon('assets/home.png', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                }),
              ),

              // TASKS
              Expanded(child: _bottomIcon('assets/list.png', () {})),

              const SizedBox(width: 32),

              // PLUS
              SizedBox(
                width: 68,
                height: 96,
                child: Center(
                  child: SizedBox(
                    width: 68,
                    height: 68,
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: const Color(0xFF7659C2),
                      elevation: 0,
                      shape: const CircleBorder(),
                      child: const Text(
                        '+',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 32),

              // CHAT
              Expanded(child: _bottomIcon('assets/chat.png', () {})),

              // PROFILE
              Expanded(
                child: _bottomIcon('assets/profile.png', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // =====================================================
  // TASK TAB
  // =====================================================

  Widget _taskTab(
    String text,
    String number,
    bool selected,
    Color numberColor,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        height: 48,

        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: selected
                  ? const Color(0xFF573F95)
                  : const Color(0x337659C2),
              width: selected ? 2 : 1,
            ),
          ),
        ),

        child: Row(
          children: [
            const SizedBox(width: 2),

            Expanded(
              child: Text(
                text,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'NotoSansGeorgian',
                  color: selected
                      ? const Color(0xFF573F95)
                      : const Color(0xFF7659C2),
                  fontSize: 11,
                  fontWeight: selected ? FontWeight.w500 : FontWeight.w400,
                ),
              ),
            ),

            const SizedBox(width: 4),

            Container(
              width: 16,
              height: 16,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: numberColor,
                shape: BoxShape.circle,
              ),
              child: Text(
                number,
                style: const TextStyle(
                  fontFamily: 'NotoSansGeorgian',
                  color: Color(0xFF7659C2),
                  fontSize: 9,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            const SizedBox(width: 2),
          ],
        ),
      ),
    );
  }

  // =====================================================
  // BOTTOM NAV ICON
  // =====================================================

  Widget _bottomIcon(String image, VoidCallback onTap) {
    return SizedBox(
      height: 96,
      child: Center(
        child: GestureDetector(
          onTap: onTap,
          child: Image.asset(image, width: 32, height: 32),
        ),
      ),
    );
  }
}

// =====================================================
// SHARED TASK CARD
// =====================================================

class TaskCard extends StatelessWidget {
  final String image;
  final String title;
  final String location;
  final String time;
  final String price;
  final String status;
  final bool completed;

  // TRUE = Home design: bookmark top-right
  // FALSE = Tasks design: price top-right
  final bool showBookmark;

  const TaskCard({
    super.key,
    required this.image,
    required this.title,
    required this.location,
    required this.time,
    required this.price,
    this.status = '',
    this.completed = false,
    this.showBookmark = false,
  });

  void toggleBookmark() {
    final current = Set<String>.from(bookmarkedTasks.value);

    if (current.contains(title)) {
      current.remove(title);
    } else {
      current.add(title);
    }

    bookmarkedTasks.value = current;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Set<String>>(
      valueListenable: bookmarkedTasks,
      builder: (context, bookmarks, child) {
        final bool isBookmarked = bookmarks.contains(title);

        return Container(
          width: 342,
          height: 88,

          decoration: BoxDecoration(
            color: const Color(0x407659C2),
            borderRadius: BorderRadius.circular(10),

            boxShadow: const [
              BoxShadow(
                color: Color(0x26573F95),
                blurRadius: 30,
                spreadRadius: 0,
                offset: Offset(0, 0),
              ),
            ],
          ),

          child: Stack(
            children: [
              // =================================================
              // IMAGE
              // =================================================
              Positioned(
                left: 7,
                top: 8,

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),

                  child: Image.asset(
                    image,
                    width: 73,
                    height: 73,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // =================================================
              // TITLE
              // =================================================
              Positioned(
                left: 89,
                top: 8,

                child: SizedBox(
                  width: 180,
                  height: 19,

                  child: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,

                    style: const TextStyle(
                      fontFamily: 'NotoSansGeorgian',
                      color: Color(0xFF573F95),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 1,
                    ),
                  ),
                ),
              ),

              // =================================================
              // LOCATION
              // =================================================
              Positioned(
                left: 97,
                top: 33,

                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/location.png', width: 16, height: 16),

                    const SizedBox(width: 2),

                    Text(
                      location,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,

                      style: const TextStyle(
                        fontFamily: 'NotoSansGeorgian',
                        color: Color(0xFF7659C2),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 1,
                      ),
                    ),
                  ],
                ),
              ),

              // =================================================
              // TIME
              // =================================================
              Positioned(
                left: 97,
                top: 57,

                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/clock.png', width: 16, height: 16),

                    const SizedBox(width: 2),

                    Text(
                      time,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,

                      style: const TextStyle(
                        fontFamily: 'NotoSansGeorgian',
                        color: Color(0xFF7659C2),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 1,
                      ),
                    ),
                  ],
                ),
              ),

              // =================================================
              // HOME ONLY: BOOKMARK TOP-RIGHT
              // =================================================
              if (showBookmark)
                Positioned(
                  right: 8,
                  top: 8,

                  child: GestureDetector(
                    onTap: toggleBookmark,

                    child: Image.asset(
                      isBookmarked
                          ? 'assets/bookmarked.png'
                          : 'assets/bookmark.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),

              // =================================================
              // HOME ONLY: PRICE BOTTOM-RIGHT
              // =================================================
              if (showBookmark)
                Positioned(
                  right: 8,
                  top: 58,

                  child: Text(
                    price,
                    textAlign: TextAlign.right,

                    style: const TextStyle(
                      fontFamily: 'NotoSansGeorgian',
                      color: Color(0xFF573F95),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      height: 1,
                    ),
                  ),
                ),

              // =================================================
              // TASKS PAGE ONLY: PRICE TOP-RIGHT
              // =================================================
              if (!showBookmark)
                Positioned(
                  right: 8,
                  top: 8,

                  child: Text(
                    price,
                    textAlign: TextAlign.right,

                    style: const TextStyle(
                      fontFamily: 'NotoSansGeorgian',
                      color: Color(0xFF573F95),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      height: 1,
                    ),
                  ),
                ),

              // =================================================
              // STATUS
              // =================================================
              if (status.isNotEmpty)
                Positioned(
                  right: 8,
                  bottom: 8,

                  child: Container(
                    height: 20,

                    padding: const EdgeInsets.symmetric(horizontal: 8),

                    decoration: BoxDecoration(
                      color: completed
                          ? const Color(0xFFD8EFCB)
                          : const Color(0xFFF1DFA0),

                      borderRadius: BorderRadius.circular(10),
                    ),

                    alignment: Alignment.center,

                    child: Text(
                      status,

                      style: TextStyle(
                        fontFamily: 'NotoSansGeorgian',
                        color: completed
                            ? const Color(0xFF76A85C)
                            : const Color(0xFFB4973F),
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 20),

              // TOP BAR
              SizedBox(
                width: 342,
                height: 60,
                child: Stack(
                  children: [
                    // TITLE
                    const Positioned(
                      left: 133,
                      top: 12,
                      child: SizedBox(
                        width: 76,
                        height: 34,
                        child: Text(
                          'მენიუ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'GLVenuri',
                            color: Color(0xFF573F95),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),

                    // BACK BUTTON
                    Positioned(
                      left: 294,
                      top: 0,
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          width: 48,
                          height: 48,
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/back.png',
                            width: 48,
                            height: 48,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 26),

              // SAVED TASKS
              _menuButton('assets/saved.png', 'შენახული დავალებები', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BookmarkedPage(),
                  ),
                );
              }),

              _menuButton('assets/wallet.png', 'ბალანსი', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BalancePage()),
                );
              }),

              _menuButton('assets/favorite.png', 'აპლიკაციის შეფასება'),

              _menuButton('assets/share.png', 'აპლიკაციის გაზიარება'),

              _menuButton('assets/security.png', 'კონფიდენციალურობის პოლიტიკა'),

              _menuButton('assets/policy.png', 'გამოყენების პირობები'),

              const SizedBox(height: 32),

              _menuButton('assets/support.png', 'დახმარება'),

              _menuButton('assets/settings.png', 'პარამეტრები'),

              const SizedBox(height: 24),

              // LOG OUT
              Container(
                width: 342,
                height: 56,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFCCCC),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.logout, color: Colors.red, size: 20),

                    const SizedBox(width: 8),

                    const Text(
                      'გასვლა',
                      style: TextStyle(
                        fontFamily: 'Noto Sans Georgian',
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
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

  Widget _menuButton(String icon, String text, [VoidCallback? onTap]) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 342,
        height: 56,
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          color: const Color(0xFF7659C2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            const SizedBox(width: 16),

            Image.asset(icon, width: 24, height: 24),

            const SizedBox(width: 16),

            Text(
              text,
              style: const TextStyle(
                fontFamily: 'Noto Sans Georgian',
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BookmarkedPage extends StatelessWidget {
  const BookmarkedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),

              // =================================================
              // TOP BAR
              // =================================================
              SizedBox(
                width: 342,
                height: 40,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/back.png',
                        width: 24,
                        height: 24,
                      ),
                    ),

                    const Spacer(),

                    const Text(
                      'დავალებები',
                      style: TextStyle(
                        fontFamily: 'GLVenuri',
                        color: Color(0xFF573F95),
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const Spacer(),

                    const SizedBox(width: 24, height: 24),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // =================================================
              // SEARCH BAR
              // =================================================
              SizedBox(
                width: 342,
                height: 48,
                child: TextField(
                  style: const TextStyle(
                    fontFamily: 'NotoSansGeorgian',
                    color: Color(0xFF573F95),
                    fontSize: 12,
                  ),
                  decoration: InputDecoration(
                    hintText: 'მოძებნე სასურველი დავალება...',
                    hintStyle: const TextStyle(
                      fontFamily: 'NotoSansGeorgian',
                      color: Color(0xFF7659C2),
                      fontSize: 14,
                    ),

                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset(
                        'assets/search.png',
                        width: 24,
                        height: 24,
                      ),
                    ),

                    filled: true,
                    fillColor: const Color(0x337659C2),
                    contentPadding: EdgeInsets.zero,

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // =================================================
              // LOCATION
              // =================================================
              Row(
                children: [
                  Image.asset('assets/location.png', width: 24, height: 24),

                  const SizedBox(width: 3),

                  const Text(
                    'თბილისი',
                    style: TextStyle(
                      fontFamily: 'NotoSansGeorgian',
                      color: Color(0xFF573F95),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  const SizedBox(width: 8),

                  Image.asset('assets/arrowdown.png', width: 16, height: 16),
                ],
              ),

              const SizedBox(height: 16),

              // =================================================
              // BOOKMARKED TASKS
              // =================================================
              ValueListenableBuilder<Set<String>>(
                valueListenable: bookmarkedTasks,
                builder: (context, bookmarks, child) {
                  // EMPTY STATE
                  if (bookmarks.isEmpty) {
                    return const Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 100),
                        child: Text(
                          'შენახული დავალებები არ არის',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'NotoSansGeorgian',
                            color: Color(0xFF7659C2),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    );
                  }

                  // BOOKMARKED TASKS
                  final allTasks = [
                    const TaskCard(
                      image: 'assets/job1.png',
                      title: 'კარადის აწყობა',
                      location: 'ვაკე, თბილისი',
                      time: 'დღეს, 15:00',
                      price: '30₾',
                    ),

                    const TaskCard(
                      image: 'assets/job2.png',
                      title: 'ყუთის გადატანა',
                      location: 'დიდუბე, თბილისი',
                      time: 'ხვალ, 11:00',
                      price: '20₾',
                    ),

                    const TaskCard(
                      image: 'assets/job3.png',
                      title: 'ძაღლის გასეირნება',
                      location: 'საბურთალო, თბილისი',
                      time: '2 მაისი, 18:00',
                      price: '15₾',
                    ),

                    const TaskCard(
                      image: 'assets/job4.png',
                      title: 'პროდუქტების ყიდვა',
                      location: 'დიღომი, თბილისი',
                      time: '18 აპრილი, 12:00',
                      price: '20₾',
                    ),

                    const TaskCard(
                      image: 'assets/job5.png',
                      title: 'ონკანის შეკეთება',
                      location: 'დიდუბე, თბილისი',
                      time: '5 აპრილი, 11:00',
                      price: '35₾',
                    ),
                  ];

                  final bookmarkedCards = allTasks.where((task) {
                    if (task is TaskCard) {
                      return bookmarks.contains(task.title);
                    }
                    return false;
                  }).toList();

                  return Column(
                    children: [
                      for (int i = 0; i < bookmarkedCards.length; i++) ...[
                        bookmarkedCards[i],

                        if (i != bookmarkedCards.length - 1)
                          const SizedBox(height: 8),
                      ],
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              SizedBox(
                width: 342,
                height: 34,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MenuPage(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'assets/menu.png',
                        width: 24,
                        height: 24,
                      ),
                    ),

                    const Spacer(),

                    const Text(
                      'ჩემი პროფილი',
                      style: TextStyle(
                        fontFamily: 'GLVenuri',
                        color: Color(0xFF573F95),
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const Spacer(),

                    Image.asset(
                      'assets/notification.png',
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // =================================================
              // PROFILE CARD
              // =================================================
              Container(
                width: 342,
                height: 204,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: const Color(0xFF573F95), width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    // PROFILE INFO
                    SizedBox(
                      height: 108,
                      child: Row(
                        children: [
                          const SizedBox(width: 16),

                          // PROFILE PHOTO
                          Container(
                            width: 72,
                            height: 72,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/profile_photo.png',
                                width: 72,
                                height: 72,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          const SizedBox(width: 12),

                          // NAME + EMAIL + BUTTON
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'მამუკა თაყაშვილი',
                                  style: TextStyle(
                                    fontFamily: 'NotoSansGeorgian',
                                    color: Color(0xFF573F95),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),

                                const SizedBox(height: 4),

                                const Text(
                                  'mamuka@gmail.com',
                                  style: TextStyle(
                                    fontFamily: 'NotoSansGeorgian',
                                    color: Color(0xFF7659C2),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),

                                const SizedBox(height: 6),

                                Container(
                                  width: 82,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF7659C2),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Task Owner',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(width: 16),
                        ],
                      ),
                    ),

                    // =================================================
                    // STATS
                    // =================================================
                    Container(
                      height: 94,
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Color(0xFF573F95), width: 1),
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: _profileStat(
                              Icons.assignment_outlined,
                              '32',
                              'შესრულებული\ntask-ები',
                            ),
                          ),

                          Expanded(
                            child: _profileStat(
                              Icons.check_circle_outline,
                              '30',
                              'დასრულებული\ntask-ები',
                            ),
                          ),

                          Expanded(
                            child: _profileStat(
                              Icons.star_border,
                              '28',
                              'შეფასება',
                            ),
                          ),

                          Expanded(
                            child: _profileStat(
                              Icons.workspace_premium_outlined,
                              '10',
                              'მიღებული\nბეჯები',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // =================================================
              // MY ACCOUNT TITLE
              // =================================================
              const Text(
                'ჩემი ანგარიში',
                style: TextStyle(
                  fontFamily: 'NotoSansGeorgian',
                  color: Color(0xFF573F95),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 8),

              // =================================================
              // ACCOUNT OPTIONS
              // =================================================
              _accountItem(Icons.person_outline, 'პირადი ინფორმაცია'),

              const SizedBox(height: 8),

              _accountItem(Icons.credit_card_outlined, 'ჩემი ბარათი'),

              const SizedBox(height: 8),

              _accountItem(Icons.lock_outline, 'უსაფრთხოება'),

              const SizedBox(height: 8),

              _accountItem(Icons.assignment_outlined, 'ჩემი Task-ები'),

              const SizedBox(height: 8),

              _accountItem(Icons.info_outline, 'აპის შესახებ'),
            ],
          ),
        ),
      ),

      // =================================================
      // BOTTOM NAVIGATION
      // =================================================
      bottomNavigationBar: SizedBox(
        height: 96,
        child: BottomAppBar(
          color: const Color(0xFFE8E0F8),
          elevation: 0,
          padding: EdgeInsets.zero,
          child: Row(
            children: [
              // HOME
              Expanded(
                child: _bottomIcon('assets/home.png', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                }),
              ),

              // TASKS
              Expanded(
                child: _bottomIcon('assets/list.png', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TasksPage()),
                  );
                }),
              ),

              const SizedBox(width: 32),

              // PLUS
              SizedBox(
                width: 68,
                height: 96,
                child: Center(
                  child: SizedBox(
                    width: 68,
                    height: 68,
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: const Color(0xFF7659C2),
                      elevation: 0,
                      shape: const CircleBorder(),
                      child: const Text(
                        '+',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 32),

              // CHAT
              Expanded(child: _bottomIcon('assets/chat.png', () {})),

              // PROFILE
              Expanded(child: _bottomIcon('assets/profile.png', () {})),
            ],
          ),
        ),
      ),
    );
  }

  // =====================================================
  // PROFILE STAT
  // =====================================================

  static Widget _profileStat(IconData icon, String number, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: const Color(0xFF7659C2), size: 22),

        const SizedBox(height: 4),

        Text(
          number,
          style: const TextStyle(
            fontFamily: 'NotoSansGeorgian',
            color: Color(0xFF7659C2),
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),

        const SizedBox(height: 2),

        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: 'NotoSansGeorgian',
            color: Color(0xFF7659C2),
            fontSize: 8,
            fontWeight: FontWeight.w400,
            height: 1.2,
          ),
        ),
      ],
    );
  }

  // =====================================================
  // ACCOUNT ITEM
  // =====================================================

  static Widget _accountItem(IconData icon, String text) {
    return Container(
      width: 342,
      height: 48,
      decoration: BoxDecoration(
        color: const Color(0xFFF1ECFA),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const SizedBox(width: 16),

          Icon(icon, color: const Color(0xFF7659C2), size: 22),

          const SizedBox(width: 12),

          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontFamily: 'NotoSansGeorgian',
                color: Color(0xFF7659C2),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),

          const Icon(Icons.chevron_right, color: Color(0xFF7659C2), size: 24),

          const SizedBox(width: 8),
        ],
      ),
    );
  }

  // =====================================================
  // BOTTOM NAV ICON
  // =====================================================

  static Widget _bottomIcon(String image, VoidCallback onTap) {
    return SizedBox(
      height: 96,
      child: Center(
        child: GestureDetector(
          onTap: onTap,
          child: Image.asset(image, width: 32, height: 32),
        ),
      ),
    );
  }
}
class BalancePage extends StatelessWidget {
  const BalancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),

              // TOP BAR
              SizedBox(
                width: 342,
                height: 40,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/back.png',
                        width: 24,
                        height: 24,
                      ),
                    ),

                    const Spacer(),

                    const Text(
                      'ბალანსი',
                      style: TextStyle(
                        fontFamily: 'GLVenuri',
                        color: Color(0xFF573F95),
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const Spacer(),

                    const SizedBox(
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // BALANCE CARD
              Container(
                width: 342,
                height: 92,
                decoration: BoxDecoration(
                  color: const Color(0xFF7659C2),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 11,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'მიმდინარე ბალანსი',
                      style: TextStyle(
                        fontFamily: 'Noto Sans Georgian',
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    const SizedBox(height: 4),

                    const Text(
                      '125.50 ₾',
                      style: TextStyle(
                        fontFamily: 'Noto Sans Georgian',
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const SizedBox(height: 2),

                    const Text(
                      'ხელმისაწვდომი თანხა',
                      style: TextStyle(
                        fontFamily: 'Noto Sans Georgian',
                        color: Color(0xFFDCD4F2),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 12),

              // ADD MONEY + WITHDRAW
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF1ECFA),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            decoration: const BoxDecoration(
                              color: Color(0xFFE2D9F5),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Color(0xFF7659C2),
                              size: 18,
                            ),
                          ),

                          const SizedBox(width: 8),

                          const Text(
                            'თანხის ჩარიცხვა',
                            style: TextStyle(
                              fontFamily: 'Noto Sans Georgian',
                              color: Color(0xFF7659C2),
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 8),

                  Expanded(
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF1ECFA),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            decoration: const BoxDecoration(
                              color: Color(0xFFE2D9F5),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.arrow_upward,
                              color: Color(0xFF7659C2),
                              size: 16,
                            ),
                          ),

                          const SizedBox(width: 8),

                          const Text(
                            'ისესხე',
                            style: TextStyle(
                              fontFamily: 'Noto Sans Georgian',
                              color: Color(0xFF7659C2),
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // TRANSACTIONS TITLE
              Row(
                children: [
                  const Text(
                    'ტრანზაქციები',
                    style: TextStyle(
                      fontFamily: 'Noto Sans Georgian',
                      color: Color(0xFF7659C2),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const Spacer(),

                  const Text(
                    'ყველას ნახვა',
                    style: TextStyle(
                      fontFamily: 'Noto Sans Georgian',
                      color: Color(0xFF7659C2),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  const Icon(
                    Icons.chevron_right,
                    color: Color(0xFF7659C2),
                    size: 18,
                  ),
                ],
              ),

              const SizedBox(height: 8),

              // TRANSACTION 1
              _transactionItem(
                Icons.arrow_downward,
                'თანხის ჩარიცხვა',
                '26 აგვისტო, 2026, 14:37',
                '+100.00 ₾',
                true,
              ),

              const SizedBox(height: 8),

              // TRANSACTION 2
              _transactionItem(
                Icons.lock_outline,
                'დაკავებული თანხა',
                'Task ID: #1287',
                '-45 ₾',
                false,
              ),

              const SizedBox(height: 8),

              // TRANSACTION 3
              _transactionItem(
                Icons.arrow_downward,
                'გამომუშავებული თანხა',
                'Task ID: #1210',
                '+45 ₾',
                true,
              ),

              const SizedBox(height: 8),

              // TRANSACTION 4
              _transactionItem(
                Icons.arrow_upward,
                'თანხის გატანა',
                '16 აგვისტო, 2026, 18:15',
                '-80 ₾',
                false,
              ),

              const SizedBox(height: 12),

              // SECURITY INFO
              Container(
                width: 342,
                height: 58,
                decoration: BoxDecoration(
                  color: const Color(0xFFE8E0F8),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.verified_user_outlined,
                      color: Color(0xFF7659C2),
                      size: 18,
                    ),

                    const SizedBox(width: 8),

                    Expanded(
                      child: Text(
                        'უსაფრთხოება დაცულია. თქვენი ფინანსური ინფორმაცია დაცულია.',
                        style: const TextStyle(
                          fontFamily: 'Noto Sans Georgian',
                          color: Color(0xFF7659C2),
                          fontSize: 8,
                          fontWeight: FontWeight.w400,
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

  static Widget _transactionItem(
    IconData icon,
    String title,
    String subtitle,
    String amount,
    bool positive,
  ) {
    return Container(
      width: 342,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color(0xFFDCD4F2),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const SizedBox(width: 8),

          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: positive
                  ? const Color(0xFFD8F5D2)
                  : const Color(0xFFFFD6D6),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: positive ? Colors.green : Colors.red,
              size: 15,
            ),
          ),

          const SizedBox(width: 8),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'Noto Sans Georgian',
                    color: Color(0xFF573F95),
                    fontSize: 9,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                Text(
                  subtitle,
                  style: const TextStyle(
                    fontFamily: 'Noto Sans Georgian',
                    color: Color(0xFF7659C2),
                    fontSize: 7,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),

          Text(
            amount,
            style: TextStyle(
              fontFamily: 'Noto Sans Georgian',
              color: positive ? Colors.green : Colors.black54,
              fontSize: 9,
              fontWeight: FontWeight.w500,
            ),
          ),

          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
// =====================================================
// MORE CATEGORIES PAGE
// =====================================================

class MoreCategoriesPage extends StatelessWidget {
  const MoreCategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),

              // =================================================
              // TOP BAR
              // =================================================

              SizedBox(
                width: 342,
                height: 40,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/back.png',
                        width: 24,
                        height: 24,
                      ),
                    ),

                    const Spacer(),

                    const Text(
                      'კატეგორიები',
                      style: TextStyle(
                        fontFamily: 'GLVenuri',
                        color: Color(0xFF573F95),
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const Spacer(),

                    const SizedBox(
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // =================================================
              // SEARCH BAR
              // =================================================

              SizedBox(
                width: 342,
                height: 48,
                child: TextField(
                  style: const TextStyle(
                    fontFamily: 'Noto Sans Georgian',
                    color: Color(0xFF573F95),
                    fontSize: 12,
                  ),
                  decoration: InputDecoration(
                    hintText: 'მოძებნე სასურველი კატეგორია...',
                    hintStyle: const TextStyle(
                      fontFamily: 'Noto Sans Georgian',
                      color: Color(0xFF7659C2),
                      fontSize: 14,
                    ),

                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset(
                        'assets/search.png',
                        width: 24,
                        height: 24,
                      ),
                    ),

                    filled: true,
                    fillColor: const Color(0xFFF1ECFA),
                    contentPadding: EdgeInsets.zero,

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // =================================================
              // CATEGORIES GRID
              // =================================================

              Expanded(
                child: GridView.count(
                  crossAxisCount: 4,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    _categoryButton(
                      'მიწოდება',
                      'assets/miwodeba.png',
                    ),

                    _categoryButton(
                      'გადაზიდვა',
                      'assets/gadazidva.png',
                    ),

                    _categoryButton(
                      'სასწავლო დახმარება',
                      'assets/educational.png',
                    ),

                    _categoryButton(
                      'ხელოსანი',
                      'assets/xelosani.png',
                    ),

                    _categoryButton(
                      'ცხოველის მოვლა',
                      'assets/animal.png',
                    ),

                    _categoryButton(
                      'დასუფთავება',
                      'assets/cleaning.png',
                    ),

                    _categoryButton(
                      'რემონტი',
                      'assets/repair.png',
                    ),

                    _categoryButton(
                      'ტექნიკური დახმარება',
                      'assets/technical.png',
                    ),

                    _categoryButton(
                      'შინაური ცხოველი',
                      'assets/pet.png',
                    ),

                    _categoryButton(
                      'ბაღი',
                      'assets/garden.png',
                    ),

                    _categoryButton(
                      'IT დახმარება',
                      'assets/it.png',
                    ),

                    _categoryButton(
                      'ონლაინ დახმარება',
                      'assets/online.png',
                    ),

                    _categoryButton(
                      'UI/UX დიზაინი',
                      'assets/uiux.png',
                    ),

                    _categoryButton(
                      'ფოტოგრაფია',
                      'assets/photography.png',
                    ),

                    _categoryButton(
                      'მშენებლობა',
                      'assets/construction.png',
                    ),

                    _categoryButton(
                      'სხვა',
                      'assets/other.png',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // =================================================
      // BOTTOM NAVIGATION
      // =================================================

      bottomNavigationBar: SizedBox(
        height: 96,
        child: BottomAppBar(
          color: const Color(0xFFE8E0F8),
          elevation: 0,
          padding: EdgeInsets.zero,
          child: Row(
            children: [
              // HOME
              Expanded(
                child: _bottomItem('assets/home.png', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                }),
              ),

              // TASKS
              Expanded(
                child: _bottomItem('assets/list.png', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TasksPage(),
                    ),
                  );
                }),
              ),

              const SizedBox(width: 32),

              // PLUS
              SizedBox(
                width: 68,
                height: 68,
                child: Center(
                  child: SizedBox(
                    width: 68,
                    height: 68,
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: const Color(0xFF7659C2),
                      elevation: 0,
                      shape: const CircleBorder(),
                      child: const Text(
                        '+',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 32),

              // CHAT
              Expanded(
                child: _bottomItem('assets/chat.png', () {}),
              ),

              // PROFILE
              Expanded(
                child: _bottomItem('assets/profile.png', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // =====================================================
  // CATEGORY BUTTON
  // =====================================================

  static Widget _categoryButton(
    String text,
    String imagePath,
  ) {
    return Container(
      width: 79.5,
      height: 79.5,
      decoration: BoxDecoration(
        color: const Color(0xFFE8E0F8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 32,
            height: 32,
          ),

          const SizedBox(height: 4),

          SizedBox(
            width: 65,
            height: 28,
            child: Text(
              text,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontFamily: 'GLVenuri',
                color: Color(0xFF7659C2),
                fontSize: 9,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // =====================================================
  // BOTTOM NAV ITEM
  // =====================================================

  static Widget _bottomItem(
    String image,
    VoidCallback onTap,
  ) {
    return SizedBox(
      height: 96,
      child: Center(
        child: GestureDetector(
          onTap: onTap,
          child: Image.asset(
            image,
            width: 32,
            height: 32,
          ),
        ),
      ),
    );
  }
}
// =====================================================
// MORE TASKS PAGE
// =====================================================

class MoreTasksPage extends StatelessWidget {
  const MoreTasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),

                // =================================================
                // TOP BAR
                // =================================================

                SizedBox(
                  width: 342,
                  height: 40,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          'assets/back.png',
                          width: 24,
                          height: 24,
                        ),
                      ),

                      const Spacer(),

                      const Text(
                        'ახალი დავალებები',
                        style: TextStyle(
                          fontFamily: 'GLVenuri',
                          color: Color(0xFF573F95),
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      const Spacer(),

                      const SizedBox(
                        width: 24,
                        height: 24,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                // =================================================
                // SEARCH BAR
                // =================================================

                SizedBox(
                  width: 342,
                  height: 48,
                  child: TextField(
                    style: const TextStyle(
                      fontFamily: 'Noto Sans Georgian',
                      color: Color(0xFF573F95),
                      fontSize: 12,
                    ),
                    decoration: InputDecoration(
                      hintText: 'მოძებნე სასურველი დავალება...',
                      hintStyle: const TextStyle(
                        fontFamily: 'Noto Sans Georgian',
                        color: Color(0xFF7659C2),
                        fontSize: 14,
                      ),

                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Image.asset(
                          'assets/search.png',
                          width: 24,
                          height: 24,
                        ),
                      ),

                      filled: true,
                      fillColor: const Color(0xFFF1ECFA),
                      contentPadding: EdgeInsets.zero,

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // =================================================
                // LOCATION
                // =================================================

                Row(
                  children: [
                    Image.asset(
                      'assets/location.png',
                      width: 24,
                      height: 24,
                    ),

                    const SizedBox(width: 3),

                    const Text(
                      'თბილისი',
                      style: TextStyle(
                        fontFamily: 'Noto Sans Georgian',
                        color: Color(0xFF573F95),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    const SizedBox(width: 8),

                    Image.asset(
                      'assets/arrowdown.png',
                      width: 16,
                      height: 16,
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                // =================================================
                // EMPTY CONTENT FOR NOW
                // =================================================
              ],
            ),
          ),
        ),
      ),

      // =================================================
      // BOTTOM NAVIGATION
      // =================================================

      bottomNavigationBar: SizedBox(
        height: 96,
        child: BottomAppBar(
          color: const Color(0xFFE8E0F8),
          elevation: 0,
          padding: EdgeInsets.zero,
          child: Row(
            children: [
              // HOME
              Expanded(
                child: _bottomItem('assets/home.png', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                }),
              ),

              // TASKS
              Expanded(
                child: _bottomItem('assets/list.png', () {}),
              ),

              const SizedBox(width: 32),

              // PLUS
              SizedBox(
                width: 68,
                height: 68,
                child: Center(
                  child: SizedBox(
                    width: 68,
                    height: 68,
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: const Color(0xFF7659C2),
                      elevation: 0,
                      shape: const CircleBorder(),
                      child: const Text(
                        '+',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 32),

              // CHAT
              Expanded(
                child: _bottomItem('assets/chat.png', () {}),
              ),

              // PROFILE
              Expanded(
                child: _bottomItem('assets/profile.png', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // =====================================================
  // BOTTOM NAV ITEM
  // =====================================================

  static Widget _bottomItem(
    String image,
    VoidCallback onTap,
  ) {
    return SizedBox(
      height: 96,
      child: Center(
        child: GestureDetector(
          onTap: onTap,
          child: Image.asset(
            image,
            width: 32,
            height: 32,
          ),
        ),
      ),
    );
  }
}