import 'package:flutter/material.dart';

class Textos extends StatelessWidget {
  const Textos({
    Key? key,
    required this.controlgestion,
    required this.label,
  }) : super(key: key);

  final TextEditingController controlgestion;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        controller: controlgestion,
        decoration: InputDecoration(
            filled: true,
            labelText: label,
            // suffix: Icon(Icons.access_alarm),
            suffix: GestureDetector(
              child: const Icon(Icons.close),
              onTap: () {
                controlgestion.clear();
              },
            )
            //probar suffix
            ),
      ),
    );
  }
}
