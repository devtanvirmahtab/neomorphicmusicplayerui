import 'package:flutter/material.dart';

class NeoBox extends StatelessWidget {
  const NeoBox({Key? key,required this.child}) : super(key: key);
  final child;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[300],
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 20,
                offset: Offset(5,5)
            ),
            BoxShadow(
                color: Colors.white,
                blurRadius: 20,
                offset: Offset(-5,-5)
            ),
          ]
      ),
    );
  }
}
