import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:map_demo/app_routes.dart';
import 'package:map_demo/pages/profile/create_profile/create_profile.page.dart';
import 'package:map_demo/pages/profile/profile.logic.dart';
import 'package:map_demo/pages/widgets/primary_button.widget.dart';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pod = profilePageLogicPod;

    useEffect(() {
      Future.delayed(Duration.zero, () {
        ref.read(pod.notifier).getProfile();
      });
    }, const []);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          width: double.maxFinite,
          child: Consumer(
            builder: (context, ref, child) {
              final name = ref.watch(pod.select((val) => val.name));
              final lastName = ref.watch(pod.select((val) => val.lastName));
              final dob = ref.watch(pod.select((val) => val.dob));
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    const Text(
                            'Create Profile',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 40,),
                  const Icon(Icons.person, size: 60.0,),
                  const SizedBox(height: 30.0,),
                  Text("Welcome, $name $lastName", style: const TextStyle(
                    fontWeight: FontWeight.w600,fontSize: 24.0,
                  ),),
                  const SizedBox(height: 10.0,),
                  Text("Your are born on $dob", style: const TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 18.0,
                  ),),
                  const SizedBox(height: 50.0,),
                  PrimaryButton(isLoading: false, text: "Edit Profile",
                  onTap: () {
                    const CreateProfilePageRoute(isEdit: true).push(context);
                  },
                  ),
                const SizedBox(
                  height: 20.0,
                ),
                PrimaryButton(
                  isLoading: false,
                  text: "Logout",
                  color: Colors.black54,
                  onTap: () {
                    FirebaseAuth.instance.signOut();
                    const LoginOptionsRoute().go(context);
                  },
                ),
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}