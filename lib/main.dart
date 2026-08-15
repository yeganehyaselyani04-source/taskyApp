import 'package:flutter/material.dart';

void main() {
  runApp(const TaskyApp());
}

class TaskyApp extends StatelessWidget {
  const TaskyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasky',
      home: const WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF573F95),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // logo
            Image.asset(
              'assets/logo.png',
              width: 290,
              height: 137,
            ),

            const SizedBox(height: 56),

            // quote
            const Text(
              'იპოვე ადამიანი, ვინც შენს საქმეს გააკეთებს',
              style: TextStyle(
                fontFamily: 'GLVenuri',
                color: Color(0xCCFFFFFF),
                fontSize: 16,
                fontWeight: FontWeight.w400,
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
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'ელ.პოსტით შესვლა',
              style: TextStyle(
                fontFamily: 'GLVenuri',
                color: Color(0xFF573F95),
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),

            const SizedBox(height: 30),

            // Email
            SizedBox(
              width: 342,
              child: TextField(
                style: const TextStyle(
                  fontFamily: 'GLVenuri',
                  color: Color(0xFF573F95),
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  labelText: 'ელ.პოსტა',
                  labelStyle: const TextStyle(
                    fontFamily: 'GLVenuri',
                    color: Color(0xFF573F95),
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF573F95),
                      width: 1,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF573F95),
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 15),

            // Password
            SizedBox(
              width: 342,
              child: TextField(
                obscureText: true,
                style: const TextStyle(
                  fontFamily: 'GLVenuri',
                  color: Color(0xFF573F95),
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  labelText: 'პაროლი',
                  labelStyle: const TextStyle(
                    fontFamily: 'GLVenuri',
                    color: Color(0xFF573F95),
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF573F95),
                      width: 1,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF573F95),
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),

            // Forgot password
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ForgotPasswordPage(),
                  ),
                );
              },
              child: const Text(
                'დაგავიწყდათ პაროლი?',
                style: TextStyle(
                  fontFamily: 'GLVenuri',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Continue button
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
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(16),
                  elevation: 10,
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

            // Register
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterPage(),
                  ),
                );
              },
              child: const Text(
                'არ გაქვთ ანგარიში? რეგისტრაცია',
                style: TextStyle(
                  fontFamily: 'GLVenuri',
                  color: Color(0xFF573F95),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Image.asset(
                'assets/back.png',
              ),
            ),
          ],
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
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF9AC76D),
                      width: 1,
                    ),
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
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF9AC76D),
                      width: 1,
                    ),
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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'თქვენ წარმატებით გაიარეთ რეგისტრაცია!',
          style: TextStyle(
            fontFamily: 'GLVenuri',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}