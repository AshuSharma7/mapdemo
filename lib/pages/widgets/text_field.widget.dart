import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final int? length;
  const CustomTextField({super.key, required this.hintText, required this.labelText, required this.controller,
  required this.validator,
  this.keyboardType,
  this.length,
   this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      maxLength: length,
                          decoration:  InputDecoration(
                            counterText: "",
                            labelText: labelText,
                            hintText: hintText,
                            hintStyle: const TextStyle(
                              fontSize: 13.0,
                              color: Colors.black45
                            ),
                            labelStyle: const TextStyle(
                              fontSize: 20.0
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            focusedBorder:  const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blueAccent
                              )
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black26
                              )
                            ),
                          ),
                          obscureText: obscureText,
                          validator: validator,
                          controller: controller,
                        );
  }
}