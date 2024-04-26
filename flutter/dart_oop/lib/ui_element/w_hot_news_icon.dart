import 'package:flutter/cupertino.dart';

class HotNewsIcon extends StatelessWidget {
  const HotNewsIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xffd13e3c),
        borderRadius: BorderRadius.circular(14),
      ),
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xfffdf3f2),
          borderRadius: BorderRadius.circular(5),
        ),
        child: const Center(
          child: Text(
            "Hot",
            style: TextStyle(
              color: Color(0xffd13e3c),
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
          ),
        ),
      ),
    );
  }
}
