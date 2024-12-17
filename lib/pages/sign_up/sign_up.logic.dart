import 'dart:developer';

import 'package:another_flushbar/flushbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:map_demo/app_routes.dart';
import 'package:map_demo/pages/login/login.state.dart';
import 'package:map_demo/pages/sign_up/sign_up.state.dart';
import 'package:map_demo/utils/context.utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_up.logic.g.dart';

@riverpod
class SignUpPageLogic extends _$SignUpPageLogic {

  @override
  SignUpPageState build() {

    return SignUpPageState();
  }

  Future<void> signUpUser({
    required String email,
    required String password
  }) async {
    state = state.copyWith(isLoading: true);
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: password,
  );
    state = state.copyWith(isLoading: false);
  if(credential.credential != null) {
 final dref =  FirebaseDatabase.instance.ref();
 final res = await dref.child(credential.user?.uid ?? '').get();
 if(res.exists) {
const ProfilePageRoute().go(getContext(ref)!);
 } else {
  const CreateProfilePageRoute(isEdit: false).push(getContext(ref)!);
 }
  }
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
    } catch(e) {
      log(e.toString());
    }
  }
}
