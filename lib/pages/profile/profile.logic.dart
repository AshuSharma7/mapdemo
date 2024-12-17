
import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:map_demo/pages/profile/profile.state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile.logic.g.dart';

@riverpod
class ProfilePageLogic extends _$ProfilePageLogic {

  @override
  ProfilePageState build() {

    return ProfilePageState();
  }

  Future<void> getProfile() async {
    final data = await FirebaseDatabase.instanceFor(app: Firebase.app(), databaseURL: "https://map-demo-69f96-default-rtdb.asia-southeast1.firebasedatabase.app/").ref().child("users").child(FirebaseAuth.instance.currentUser?.uid ?? '').get();
    if(data.exists) {
      final res = (jsonDecode(jsonEncode(data.value)) as Map<String, dynamic>);
      state = state.copyWith(dob: res["dob"],
      name: res["firstName"],
      lastName: res["lastName"]
      );
    }
  }

  
}
