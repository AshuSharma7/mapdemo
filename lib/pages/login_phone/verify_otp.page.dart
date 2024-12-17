import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:map_demo/pages/login_phone/login_phone.logic.dart';
import 'package:map_demo/pages/profile/create_profile/create_profile.logic.dart';
import 'package:map_demo/pages/widgets/primary_button.widget.dart';
import 'package:map_demo/pages/widgets/text_field.widget.dart';
import 'package:pinput/pinput.dart';

class VerifyOtpPage extends HookConsumerWidget {
  final String verificationId;
  const VerifyOtpPage({super.key, required this.verificationId,});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final otpController = useTextEditingController();
    final pod = loginPhoneLogicPod;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 100,),
            const Text(
                    'Verify OTP',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 100,),
            
            Pinput(
              defaultPinTheme: PinTheme(
                width: 56,
  height: 56,
  textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
    borderRadius: BorderRadius.circular(20),
  ),
              ),
            ),
             const SizedBox(height: 60,),
             Consumer(
               builder: (context, ref, child) {
                final isLoading = ref.watch(pod.select((val) => val.isLoading));
                 return PrimaryButton(
                  onTap: () {
                    
                  },
                  isLoading: isLoading, text: "Verify OTP");
               }
             ),
        
          ],
        ),
      ),
    );
  }
}