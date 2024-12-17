
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:map_demo/app_routes.dart';
import 'package:map_demo/pages/profile/create_profile/create_profile.state.dart';
import 'package:map_demo/pages/profile/profile.logic.dart';
import 'package:map_demo/utils/context.utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_profile.logic.g.dart';

@riverpod
class CreateProfilePageLogic extends _$CreateProfilePageLogic {

  @override
  CreateProfilePageState build() {

    return CreateProfilePageState();
  }

  Future<void> createProfile({required String firstName, required String lastName, required String dob, bool isEdit = false}) async {
    state = state.copyWith(isLoading: true);
    final db = FirebaseDatabase.instanceFor(app: Firebase.app(), databaseURL: "https://map-demo-69f96-default-rtdb.asia-southeast1.firebasedatabase.app/").ref().child("users").child(FirebaseAuth.instance.currentUser?.uid ?? '');
   await db.set({
      "firstName": firstName,
      "lastName": lastName,
      "dob": dob,
    });
    await FirebaseAuth.instance.currentUser?.updateDisplayName(firstName);
    state = state.copyWith(isLoading: false);
    if(isEdit) {
      ref.read(profilePageLogicPod.notifier).getProfile();
    }
    const ProfilePageRoute().go(getContext(ref)!);
  }

  
}
