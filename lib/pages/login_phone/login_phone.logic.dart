
import 'dart:developer';

import 'package:another_flushbar/flushbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:map_demo/app_routes.dart';
import 'package:map_demo/pages/login_phone/login_phone.state.dart';
import 'package:map_demo/utils/context.utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_phone.logic.g.dart';

@riverpod
class LoginPhoneLogic extends _$LoginPhoneLogic {

  @override
  LoginPhoneState build() {

    return LoginPhoneState();
  }

  Future<void> sendOtp(String phone,) async {
    state = state.copyWith(isLoading: true);
    try {
      final credential = await FirebaseAuth.instance.verifyPhoneNumber(
        codeSent: (verificationId, forceResendingToken) {
          state = state.copyWith(isLoading: false);
          final context = getContext(ref);
          if(context != null && context.mounted) {
          VerifyOtpPageRoute(verificationId: verificationId).push(context);
        }
        },
        verificationFailed: (error) {
          state = state.copyWith(isLoading: false);
      final context = getContext(ref);
      if(context != null && context.mounted) {
        Flushbar(
                  title:  error.code,
                  message:  error.message,
                  duration:  const Duration(seconds: 3),
                ).show(context);
      }
        },
        codeAutoRetrievalTimeout: (verificationId) {
          
        },
    phoneNumber:"+91$phone", verificationCompleted: (PhoneAuthCredential phoneAuthCredential) {  },
  );
    state = state.copyWith(isLoading: false);
  
    } on FirebaseAuthException catch(e) {
      state = state.copyWith(isLoading: false);
      final context = getContext(ref);
      if(context != null && context.mounted) {
        Flushbar(
                  title:  e.code,
                  message:  e.message,
                  duration:  const Duration(seconds: 3),
                ).show(context);
      }
      log(e.message ?? '');
    }
  }
  
}
