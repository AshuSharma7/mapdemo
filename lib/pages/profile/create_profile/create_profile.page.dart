import 'dart:convert';

import 'package:another_flushbar/flushbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:map_demo/pages/profile/create_profile/create_profile.logic.dart';
import 'package:map_demo/pages/widgets/text_field.widget.dart';

class CreateProfilePage extends HookConsumerWidget {
  final bool isEdit;
  const CreateProfilePage({super.key, required this.isEdit});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = useTextEditingController();
    final lastNameController = useTextEditingController();
    final dateController = useTextEditingController();
    final pod = createProfilePageLogicPod;

    useEffect(() {
      Future.delayed(Duration.zero, ()async  {
        final data = await FirebaseDatabase.instanceFor(app: Firebase.app(), databaseURL: "https://map-demo-69f96-default-rtdb.asia-southeast1.firebasedatabase.app/").ref().child("users").child(FirebaseAuth.instance.currentUser?.uid ?? '').get();
        if(data.exists) {
          final res = (jsonDecode(jsonEncode(data.value)) as Map<String, dynamic>);
      dateController.text = res["dob"];
    nameController.text = res["firstName"];
     lastNameController.text = res["lastName"];
        }
      });
    }, const []);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 100,),
             Text(
                   isEdit ? "Edit Profile" : 'Create Profile',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 100,),
            CustomTextField(hintText: "your first name", labelText: "First Name", controller: nameController, validator: (val) {
              if(val?.isEmpty ?? false) {
                return "Please enter a valid name";
              }
              return null;
            }),
            CustomTextField(hintText: "your last name", labelText: "Last Name", controller: lastNameController, validator: (val) {
              if(val?.isEmpty ?? false) {
                return "Please enter a valid name";
              }
              return null;
            }),
             GestureDetector(
              onTap: () async {
                final date = await showDatePicker(context: context, firstDate: DateTime(1900), lastDate: DateTime.now(),
                );
                if(date != null) {
                  dateController.text = DateFormat.yMMMd().format(date);
                }
              },
               child: TextField(
                controller: dateController,
                
                enabled: false,
                decoration:  const InputDecoration(
                                labelText: "DOB",
                                hintText: "Your date of birth",
                                hintStyle: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.black45
                                ),
                                labelStyle: TextStyle(
                                  fontSize: 20.0
                                ),
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                focusedBorder:  UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.blueAccent
                                  )
                                ),
                                disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black26
                                  )
                                ),
                              ),
                           ),
             ),
             const SizedBox(height: 60,),
             Consumer(
               builder: (context, ref, child) {
                final isLoading = ref.watch(pod.select((val) => val.isLoading));
                 return GestureDetector(
                  behavior: HitTestBehavior.opaque,
                                  onTap: () {
                  if (nameController.text.isEmpty ||
                      lastNameController.text.isEmpty ||
                      dateController.text.isEmpty) {
                    Flushbar(
                      message: "Please enter all details",
                      title: "Error",
                      duration: const Duration(seconds: 2),
                    ).show(context);
                    return;
                  }
                                  ref.read(pod.notifier).createProfile(firstName: nameController.text, 
                                  lastName: lastNameController.text, dob: dateController.text, isEdit: isEdit);
                                  },
                                  child: Container(
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child:  Center(
                                      child: isLoading ? const CircularProgressIndicator.adaptive(
                                        backgroundColor: Colors.white,
                                      ) : const Text("Submit",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                      ),
                                      ),
                                    ),
                                  ),
                                );
               }
             ),
        
          ],
        ),
      ),
    );
  }
}