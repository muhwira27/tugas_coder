import 'package:flutter/material.dart';

class GmailAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      backgroundColor: Color(0xFF111111),
      floating: true,
      snap: true,
      title: Text(
        "Gmail",
        style: TextStyle(
          color: Colors.white70,
          fontWeight: FontWeight.w500,
          fontSize: 22,
        ),
      ),
      centerTitle: true,
      leading: Icon(
        Icons.menu,
        color: Color(0xfffaf5ea),
      ),
      actions: [
        // Profile Picture
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: SizedBox(
            width: 30,
            child: CircleAvatar(
              backgroundColor: Color(0xFF4285F4),
              child: Text(
                "Z",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
