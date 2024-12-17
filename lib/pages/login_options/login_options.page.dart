import 'package:flutter/material.dart';
import 'package:map_demo/app_routes.dart';
import 'package:map_demo/pages/widgets/primary_button.widget.dart';

class LoginOptions extends StatelessWidget {
  const LoginOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
                    'Login Options',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 100,),
            PrimaryButton(isLoading: false, text: "Login with Phone",
            
            onTap: () {
              const LoginPhonePageRoute().push(context);
            },),
            const SizedBox(height: 20.0,),
            PrimaryButton(isLoading: false,
            onTap: () {
              const LoginPageRoute().push(context);
            },
             text: "Login with Email"),
          ],
        ),
      ),
    );
  }
}