import 'dart:convert';
import 'dart:math';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart';
import 'package:tugas_coder/widgets/email_tile.dart';
import 'package:tugas_coder/widgets/gmail_app_bar.dart';

class EmailListPage extends StatefulWidget {
  @override
  State<EmailListPage> createState() => _EmailListPageState();
}

class _EmailListPageState extends State<EmailListPage> {
  List<Map<String, dynamic>> emails = [];

  List<Color> colors = [
    const Color(0xFF59CBF2),
    const Color(0xFF6397F0),
    const Color(0xFFF58168),
    const Color(0xFFF0C42D),
    const Color(0xFFF4B400),
  ];

  @override
  void initState() {
    super.initState();
    loadEmails();
  }

  Future<void> loadEmails() async {
    final jsonData = await rootBundle.loadString('assets/data.json');
    final List<dynamic> parsedJson = json.decode(jsonData);
    final List<Map<String, dynamic>> emailList =
        parsedJson.cast<Map<String, dynamic>>();
    setState(() {
      emails = emailList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScroller) => [
            GmailAppBar(),
          ],
          body: ListView.builder(
            itemCount: emails.length,
            itemBuilder: (context, index) => EmailTile(
              sender: emails[index]['sender'],
              subject: emails[index]['subject'],
              content: emails[index]['content'],
              day: emails[index]['day'],
              month: emails[index]['month'],
              colorPic: colors[Random().nextInt(4)],
              isImportant: emails[index]['isImportant'],
            ),
          ),
        ),
      ),
    );
  }
}
