import 'package:carrierbuddie/helpers/constants.dart';
import 'package:carrierbuddie/views/auth/login.dart';
import 'package:carrierbuddie/views/home.dart';
import 'package:flutter/material.dart';

class RegistrationView extends StatefulWidget {
  const RegistrationView({super.key});

  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  //text controllers
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _fullNameController.dispose();
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
              verticalSpace(height: 30),
              const Text(
                "Full Name",
                style: TextStyle(
                  fontSize: kHeaderTextSize,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextField(
                controller: _fullNameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'john doe',
                  hintStyle: TextStyle(fontSize: kMediumTextSize),
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
                    "Register",
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
                      .push(routeTransition(const LoginView()));
                },
                child: const Text(
                  "Already Registered? Login",
                  style: TextStyle(
                    fontSize: kMediumTextSize,
                    color: kSecondaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
