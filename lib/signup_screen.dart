import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Create Account',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Enter your Name, Email and Password for sign up. Already have account?',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Full Name',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email Address',
              ),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(
              height: 0.05,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(
                    55, 177, 82, 1)), // Set the desired color
                minimumSize: MaterialStateProperty.all(
                    const Size(400, 50)), // Set the desired width and height
              ),
              onPressed: () {
                // Add your sign-up button logic here
              },
              child: const Text('SIGN UP'),
            ),
            SizedBox(
              height: 0.05,
            ),
            const SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                // Navigate to the signup screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupScreen()),
                );
              },
              child: const Text(
                  'By Signing up you agree to our Terms Conditions & Privacy Policy.'),
            ),
            const Text(
              'Or',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(
                    53, 22, 139, 1)), // Set the desired color
                minimumSize: MaterialStateProperty.all(
                    const Size(400, 50)), // Set the desired width and height
              ),
              onPressed: () {
                // Add your sign-up button logic here
              },
              child: const Text('CONNECT WITH FACEBOOK'),
            ),
            const Spacer(flex: 1),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(
                    46, 104, 180, 1)), // Set the desired color
                minimumSize: MaterialStateProperty.all(
                    const Size(400, 50)), // Set the desired width and height
              ),
              onPressed: () {
                // Add your sign-up button logic here
              },
              child: const Text('CONNECT WITH GOOGLE'),
            ),
          ],
        ),
      ),
    );
  }
}
