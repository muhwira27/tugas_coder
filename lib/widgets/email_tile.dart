// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class EmailTile extends StatefulWidget {
  final String sender;
  final String subject;
  final String content;
  final String day;
  final String month;
  bool isImportant;

  EmailTile({
    super.key,
    required this.sender,
    required this.subject,
    required this.content,
    required this.day,
    required this.month,
    required this.isImportant,
  });

  @override
  State<EmailTile> createState() => _EmailTileState();
}

class _EmailTileState extends State<EmailTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6, left: 6, right: 6),
      child: InkWell(
        onTap: () {},
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          height: 80,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Picture
              CircleAvatar(
                backgroundColor: const Color(0xFF6397F0),
                child: Text(
                  widget.sender[0],
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(width: 20),

              // Sender name, Subject, Content of Email
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Sender name
                    Text(
                      widget.sender,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white70,
                      ),
                    ),

                    // Subject email
                    Text(
                      widget.subject,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white70,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 1,
                    ),

                    // Content email
                    Text(
                      widget.content.replaceAll('\n', ' '),
                      style: const TextStyle(
                        color: Colors.white70,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 1,
                    ),
                  ],
                ),
              ),

              // Date, important icon
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Date
                  Text(
                    "${widget.day} ${widget.month.substring(0, 3)}",
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xffb3aa9b),
                    ),
                  ),

                  // Important icon
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.isImportant = !widget.isImportant;
                      });
                    },
                    child: widget.isImportant
                        ? const Icon(
                            Icons.star_sharp,
                            color: Colors.deepOrangeAccent,
                          )
                        : const Icon(
                            Icons.star_outline_sharp,
                            color: Color(0xffb3aa9b),
                          ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
