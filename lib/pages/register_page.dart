import 'package:flutter/material.dart';
import 'package:flutter_login_app/components/my_button.dart';
import 'package:flutter_login_app/components/my_textfield.dart';
import 'package:flutter_login_app/components/square_tile.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  // text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // Sign User In Method
  void signUserUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              // logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(
                height: 50,
              ),
              // welcome back, you've been missed!
              Text(
                'Let\'s create an account for you!',
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),

              const SizedBox(
                height: 25,
              ),

              // username textField
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(
                height: 10,
              ),

              // password textField
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(
                height: 10,
              ),

              // confirm password textField
              MyTextField(
                controller: passwordController,
                hintText: 'Confirm Password',
                obscureText: true,
              ),

              const SizedBox(
                height: 25,
              ),

              // Sign In Button
              MyButton(
                onTap: signUserUp,
              ),

              const SizedBox(
                height: 50,
              ),

              // or Continued with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              // google + apple Sign In Buttons
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // google button
                  SquareTile(imagePath: 'lib/images/google.png'),

                  SizedBox(
                    width: 25,
                  ),

                  // Apple button
                  SquareTile(imagePath: 'lib/images/apple.png')
                ],
              ),

              const SizedBox(
                height: 50,
              ),

              // not a member? Register Now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already a member?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    'Login now',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
