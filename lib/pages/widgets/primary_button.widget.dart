import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final bool isLoading;
  final String text;
  final void Function()? onTap;
  const PrimaryButton({super.key, required this.isLoading,
  required this.text,
  this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                                  onTap: onTap,
                                  child: Container(
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child:  Center(
                                      child: isLoading ? const CircularProgressIndicator.adaptive(
                                        backgroundColor: Colors.white,
                                      ) : Text(text,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                      ),
                                      ),
                                    ),
                                  ),
                                );
  }
}