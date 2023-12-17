import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String value;
  const Display({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Text(value,
          style: const TextStyle(color: Colors.white, fontSize: 50,),
        ),
      ),
    );
  }
}

