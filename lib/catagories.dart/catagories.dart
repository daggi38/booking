import 'package:flutter/material.dart';

class Cata extends StatelessWidget {
  String label;
  Cata({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.orange),
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)),
        width: 60,
        child: Center(
          child: Text(
            label,
            style: TextStyle(color: Colors.orange),
          ),
        ),
      ),
    );
  }
}
