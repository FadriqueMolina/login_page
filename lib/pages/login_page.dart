import 'package:flutter/material.dart';
import 'package:login_page/data/user_examples.dart';
import 'package:login_page/widgets/my_button.dart';
import 'package:login_page/widgets/my_dialog.dart';
import 'package:login_page/widgets/my_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameTextFieldController = TextEditingController();

  final passwordTextFieldController = TextEditingController();

  void _forgotPasswordTextClicked() {}

  void loginButtonPressed() {
    if (usersData[usernameTextFieldController.text] ==
        passwordTextFieldController.text) {
      Navigator.pushNamed(context, "/homepage");
    } else {
      showDialog(
          context: context,
          builder: (context) => const MyDialog(message: "User doesn't exist."));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Icono login page
            Icon(
              Icons.message,
              color: Theme.of(context).colorScheme.primary,
              size: 80,
            ),
            const SizedBox(
              height: 10,
            ),

            //Mensage Welcome back
            Text(
              "Welcome back, you have been missed.",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary),
            ),
            const SizedBox(
              height: 10,
            ),

            //Textfield user name
            MyTextfield(
              hintText: "Username",
              isObscured: false,
              controller: usernameTextFieldController,
            ),
            const SizedBox(
              height: 10,
            ),

            //textfield password
            MyTextfield(
                hintText: "Password",
                isObscured: true,
                controller: passwordTextFieldController),
            const SizedBox(
              height: 10,
            ),

            Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: GestureDetector(
                    onTap: _forgotPasswordTextClicked,
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                )),

            const SizedBox(
              height: 30,
            ),

            //Boton login
            MyButton(
              buttonText: "Login",
              action: loginButtonPressed,
            ),

            const SizedBox(
              height: 50,
            ),

            //Texto Not a member? register now.
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/registerpage");
                  },
                  child: Text(
                    "Register now.",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
