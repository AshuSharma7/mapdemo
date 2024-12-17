import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:map_demo/app_routes.dart';
import 'package:map_demo/pages/login/login.logic.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _formKey = GlobalKey<FormState>();
    final pod = loginPageLogicPod;
  final emailController = useTextEditingController();
    final passController = useTextEditingController();
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            // Column(
            //   children: [
            //     Container(
            //       w
            //       decoration: BoxDecoration(
            //         color: Colors.redAccent,
            //       ),
            //     ),
            //   ],
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 100),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration:  const InputDecoration(
                            labelText: 'E-Mail',
                            labelStyle: TextStyle(
                              fontSize: 20.0
                            ),
                            hintText: 'yourname@example.com',
                            hintStyle: TextStyle(
                              fontSize: 13.0,
                              color: Colors.black45
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            focusedBorder:  UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blueAccent
                              )
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black26
                              )
                            ),
                            
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            } else if (!RegExp(
                                    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                                .hasMatch(value)) {
                              return 'Please enter a valid email';
                            }
                            return null;
                          },
                          controller: emailController,
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            hintText: 'your password',
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
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black26
                              )
                            ),
                          ),
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                          controller: passController,
                        ),
                        const SizedBox(height: 80),
                        Consumer(
                          builder: (context, ref, child) {
                            final isLoading = ref.watch(pod.select((val) => val.isLoading));
                            return GestureDetector(
                              behavior: HitTestBehavior.opaque,
                              onTap: () {
                                // const CreateProfilePageRoute().push(context);
                                if(_formKey.currentState?.validate() ?? false) {
                                  ref.read(pod.notifier).login(email: emailController.text, password: passController.text);
                                }
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
                                  ) : const Text("Login",
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
                  const Spacer(),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                     onTap: () {
                           const SignUpPageRoute().push(context);
                          },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Don't have an account yet? ", style: TextStyle(
                            color: Colors.black45,
                          ),),
                          GestureDetector(
                            
                           
                            child: const Text(
                              'Sign up',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40.0,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}