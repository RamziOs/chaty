import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/my_button.dart';
import '../components/my_text_field.dart';
import '../services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  // sign up user
  void signUp() async {
    if (passwordController.text != confirmpasswordController.text) {
      const SnackBar(
        content: Text("Passwords do not match!"),
      );
      return;
    }

    // get auth service
    final authService = Provider.of<AuthService>(context, listen: false);

    try {
      await authService.signUpWithEmailandPassword(
        emailController.text,
        passwordController.text,
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            e.toString(),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // logo
                Icon(
                  Icons.message,
                  size: 100.0,
                  color: Colors.grey[800],
                ),

                // create account message
                const Text(
                  "Let's create an account for you!",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                // email textfield
                MyTextField(
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                // password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: "password",
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                // confirm password textfield
                MyTextField(
                  controller: confirmpasswordController,
                  hintText: "Confirm Password",
                  obscureText: true,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // sign up button
                MyButton(onTap: signUp, text: "Sign Up"),
                // not a member? register now

                const SizedBox(
                  height: 25.0,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already a member?"),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        "Login Now",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
