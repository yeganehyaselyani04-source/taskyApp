import 'package:flutter/material.dart';

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
      backgroundColor: const Color(0xFF573F95),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // logo
            Image.asset('assets/logo.png', width: 290, height: 137),
            const SizedBox(height: 56),
            //// quote
            const Text(
              '"იპოვე ადამიანი, ვინც შენს საქმეს გააკეთებს"',
              style: TextStyle(color: Color(0xCCFFFFFF), fontSize: 16),
            ),
            const SizedBox(height: 56),
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
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 24),

            SizedBox(
              width: 342,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
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
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            const SizedBox(height: 10),

            /* ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: const Text('Log in'),
            ),*/
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
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'ელ.პოსტით შესვლა',
              style: TextStyle(color: Color(0xFF573F95), fontSize: 30),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: 342,
              child: TextField(
                style: const TextStyle(color: Color(0xFF573F95)),
                decoration: InputDecoration(
                  labelText: 'ელ.პოსტა',
                  labelStyle: const TextStyle(color: Color(0xFF573F95)),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF573F95), width: 1),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF573F95)),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: 342,
              child: TextField(
                obscureText: true,
                style: const TextStyle(color: Color(0xFF573F95)),
                decoration: InputDecoration(
                  labelText: 'პაროლი',
                  labelStyle: const TextStyle(color: Color(0xFF573F95)),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF573F95), width: 1),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF573F95)),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ForgotPasswordPage(),
                  ),
                );
              },
              child: const Text('დაგავიწყდათ პაროლი?'),
            ),
            const SizedBox(height: 20),

            SizedBox(
              width: 342,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
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
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterPage()),
                );
              },
              child: const Text(
                'არ გაქვთ ანგარიში? რეგისტრაცია',
                style: TextStyle(color: Color(0xFF573F95)),
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

//nini
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
              'Create your account',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: 300,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: const TextStyle(color: Colors.white),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF9AC76D)),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: 300,
              child: TextField(
                obscureText: true,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: const TextStyle(color: Colors.white),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF9AC76D)),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              child: const Text('Create account'),
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
    return Scaffold(
      body: Center(child: Text('თქვენ წარმატებით გაიარეთ რეგისტრაცია!')),
    );
  }
}
