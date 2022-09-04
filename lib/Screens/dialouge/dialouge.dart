import 'package:flutter/material.dart';

class AddDialouge extends StatelessWidget {
  final Widget child;
  AddDialouge({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: TextFormField(),
    );
  }
}
