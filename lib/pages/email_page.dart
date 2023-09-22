// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class EmailPage extends StatefulWidget {
  final String sender;
  final String subject;
  final String content;
  final String day;
  final String month;
  final Color colorPic;
  bool isImportant;

  EmailPage({
    super.key,
    required this.sender,
    required this.subject,
    required this.content,
    required this.day,
    required this.month,
    required this.colorPic,
    required this.isImportant,
  });

  @override
  State<EmailPage> createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
        child: ListView(
          children: [
            // Subject email, important icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Subject email
                Text(
                  widget.subject,
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.white70,
                  ),
                ),

                // Important icon
                widget.isImportant
                    ? const Icon(
                        Icons.star_sharp,
                        color: Colors.deepOrangeAccent,
                      )
                    : const Icon(
                        Icons.star_outline_sharp,
                        color: Color(0xffb3aa9b),
                      ),
              ],
            ),
            const SizedBox(height: 35),

            // Profile picture, sender name, date
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Profile Picture
                CircleAvatar(
                  backgroundColor: widget.colorPic,
                  child: Text(
                    widget.sender[0],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      // Sender name
                      text: TextSpan(
                        text: widget.sender,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                        ),
                        children: [
                          // Date
                          TextSpan(
                            text: "   ${widget.day} ${widget.month}",
                            style: const TextStyle(
                                fontSize: 12, color: Color(0xFF9b9d9c)),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      "to me",
                      style: TextStyle(
                        color: Color(0xFF9b9d9c),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Content email
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.5,
                  color: const Color(0xffb3aa9b),
                ),
              ),
              child: Text(
                widget.content,
                style: const TextStyle(
                  color: Colors.white70,
                  height: 1.5,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
