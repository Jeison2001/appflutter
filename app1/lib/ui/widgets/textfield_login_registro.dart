import 'package:flutter/material.dart';

class textfield_login_registro extends StatelessWidget {
  const textfield_login_registro({
    Key? key,
    required TextEditingController controller,
    required this.labelText,
    required this.hintText,
  })  : _controller = controller,
        super(key: key);

  final TextEditingController _controller;
  final String labelText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: _controller,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          filled: true,
        ),
      ),
    );
  }
}
