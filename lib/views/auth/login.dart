import 'package:carrierbuddie/helpers/constants.dart';
import 'package:carrierbuddie/views/auth/register.dart';
import 'package:carrierbuddie/views/home.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  //text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Center(
              child: Container(
                height: 250,
                width: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo_semi.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            verticalSpace(
              height: 30,
            ),
            const Text(
              "Welcome Back!",
              style: TextStyle(
                fontSize: kLargeTextSize,
                fontWeight: FontWeight.bold,
                //color: Colors.white,
              ),
            ),
            verticalSpace(
              height: 15,
            ),
            const Text(
              "Email",
              style: TextStyle(
                fontSize: kHeaderTextSize,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'example@gmail.com',
                hintStyle: TextStyle(fontSize: kMediumTextSize),
              ),
            ),
            verticalSpace(
              height: 15,
            ),
            const Text(
              "Password",
              style: TextStyle(
                fontSize: kHeaderTextSize,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'password',
                hintStyle: TextStyle(fontSize: kMediumTextSize),
              ),
            ),
            verticalSpace(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: kMediumTextSize,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    routeTransition(
                      const HomeView(),
                    ),
                  );
                },
                style: ButtonStyle(
                  padding:
                      MaterialStateProperty.all(const EdgeInsets.all(10.0)),
                  backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: kHeaderTextSize,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(routeTransition(const RegistrationView()));
              },
              child: const Text(
                "New User? Create Account",
                style: TextStyle(
                  fontSize: kMediumTextSize,
                  color: kSecondaryColor,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
