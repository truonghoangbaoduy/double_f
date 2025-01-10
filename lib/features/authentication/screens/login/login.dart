import 'package:double_f_last_mile_delivery/features/authentication/controllers/authentication/authentication_controller.dart';
import 'package:double_f_last_mile_delivery/features/home/screens/home_screen_navigator.dart';
import 'package:double_f_last_mile_delivery/features/home/screens/home_screen_not_singed.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isRemember = false;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthenticationController());

    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 100, left: 16, right: 16, bottom: 50),
        child: Column(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Image(
                  height: 150,
                  image: AssetImage('assets/logos/logo.jpg'),
                ),
              ),
              const SizedBox(height: 32),
              Text('Login', style: Theme.of(context).textTheme.headlineMedium),
            ],
          ),
          Form(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: [
                  // Email
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.direct_right),
                      labelText: 'Phone Number/Email',
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Password
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: const Icon(Iconsax.password_check),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Iconsax.eye_slash),
                        )),
                  ),
                  const SizedBox(height: 8),

                  // Remember me & forgot password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Remember me
                      Row(
                        children: [
                          Checkbox(
                              value: isRemember,
                              onChanged: (bool? value) {
                                setState(() {
                                  isRemember = value!;
                                });
                              }),
                          const Text('Remember me'),
                        ],
                      ),

                      // Forgot password
                      TextButton(
                          onPressed: () => Get.to(() => {}),
                          child: const Text('Forgot password?')),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Sign in button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => HomeScreenNavigation());
                        controller.handleLogin();
                      },
                      child: const Text('Sign in'),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Create account button
                  // SizedBox(
                  //   width: double.infinity,
                  //   child: OutlinedButton(
                  //     onPressed: () => Get.to(() {}),
                  //     child: const Text('Create account'),
                  //   ),
                  // ),
                  TextButton(
                      onPressed: () {
                        controller.handleLogout();
                        Get.to(const HomeScreenNotSigned());
                      },
                      child: const Text('Using without account')),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
