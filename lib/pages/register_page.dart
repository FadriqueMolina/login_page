import 'package:flutter/material.dart';
import "package:login_page/data/user_examples.dart";
import "package:login_page/widgets/my_button.dart";
import "package:login_page/widgets/my_dialog.dart";
import "package:login_page/widgets/my_textfield.dart";

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  final userNameTextFieldController = TextEditingController();

  final passwordTextFieldController = TextEditingController();

  final confirmPasswordTextFieldController = TextEditingController();

  void _registerButtonTapped() {
    if (userNameTextFieldController.text.isNotEmpty &&
        passwordTextFieldController.text ==
            confirmPasswordTextFieldController.text) {
      usersData[userNameTextFieldController.text] =
          passwordTextFieldController.text;
      showDialog(
          context: context,
          builder: (context) =>
              const MyDialog(message: "User was successfully added."));
    } else {
      showDialog(
          context: context,
          builder: (context) => const MyDialog(
              message: "Something came wrong with your credentials."));
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

            //Mensage lets create an account
            Text(
              "Let's create an account for you.",
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
              controller: userNameTextFieldController,
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

            //textfield confirm password
            MyTextfield(
                hintText: "Confirm password",
                isObscured: true,
                controller: confirmPasswordTextFieldController),
            const SizedBox(
              height: 30,
            ),

            //Boton register
            MyButton(
              buttonText: "Register",
              action: _registerButtonTapped,
            ),

            const SizedBox(
              height: 50,
            ),

            //Texto Not a member? register now.
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/loginpage");
                  },
                  child: Text(
                    "Login now.",
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
