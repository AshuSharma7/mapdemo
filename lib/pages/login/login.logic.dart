import 'dart:developer';

import 'package:another_flushbar/flushbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:map_demo/app_routes.dart';
import 'package:map_demo/firebase_options.dart';
import 'package:map_demo/pages/login/login.state.dart';
import 'package:map_demo/utils/context.utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login.logic.g.dart';

@riverpod
class LoginPageLogic extends _$LoginPageLogic {

  @override
  LoginPageState build() {

    return LoginPageState();
  }

  Future<void> login({
    required String email,
    required String password
  }) async {
    state = state.copyWith(isLoading: true);
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email,
    password: password,
  );
    
  if(credential.user != null) {
 final dref =  FirebaseDatabase.instanceFor(app: Firebase.app(), databaseURL: "https://map-demo-69f96-default-rtdb.asia-southeast1.firebasedatabase.app/").ref();
 final res = await dref.child('users').child(credential.user?.uid ?? '').get();
 state = state.copyWith(isLoading: false);
 if(res.exists) {
const ProfilePageRoute().go(getContext(ref)!);
 } else {
  
  CreateProfilePageRoute(isEdit: false,).push(getContext(ref)!);
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
    }
  }
}
