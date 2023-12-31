import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultFormField extends StatelessWidget {
  final Icon icon;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool obscureText;

  const DefaultFormField({
    Key? key,
    required this.obscureText,
    required this.icon,
    required this.validator,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var offset2 = const Offset(0, 3);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: offset2,
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        validator: validator,
        obscureText: obscureText,
        style: const TextStyle(color: Colors.black), // Cor do texto
        decoration: InputDecoration(
          icon: icon,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
