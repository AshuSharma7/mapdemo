import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:map_demo/pages/login_phone/login_phone.logic.dart';
import 'package:map_demo/pages/profile/create_profile/create_profile.logic.dart';
import 'package:map_demo/pages/widgets/primary_button.widget.dart';
import 'package:map_demo/pages/widgets/text_field.widget.dart';

class LoginPhonePage extends HookConsumerWidget {
  const LoginPhonePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final phoneController = useTextEditingController();
    final pod = loginPhoneLogicPod;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 100,),
            const Text(
                    'Login With Phone',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 100,),
            CustomTextField(
              length: 10,
              keyboardType: TextInputType.number,
              hintText: "your phone number", labelText: "Phone Number", controller: phoneController, validator: (val) {
              if(val?.isEmpty ?? false || val?.length != 10) {
                return "Please enter a valid number";
              }
              return null;
            }),
            
             const SizedBox(height: 60,),
             Consumer(
               builder: (context, ref, child) {
                final isLoading = ref.watch(pod.select((val) => val.isLoading));
                 return PrimaryButton(
                  onTap: () {
                    ref.read(pod.notifier).sendOtp(phoneController.text);
                  },
                  isLoading: isLoading, text: "Send OTP");
               }
             ),
        
          ],
        ),
      ),
    );
  }
}