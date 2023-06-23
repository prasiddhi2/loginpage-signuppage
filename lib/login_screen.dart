import 'package:flutter/material.dart';
import 'signup_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: null,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Enter your Email address to sign in.Enjoy your food :)',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            const Text(
              'Forget Password?',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
            const Spacer(
              flex: 1,
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
              child: const Text('SIGN IN'),
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
              child: const Text('Dont have account? Create new account.'),
            ),
            const Text(
              'Or',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const Spacer(flex: 1),
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
            const Spacer(flex: 2),
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
