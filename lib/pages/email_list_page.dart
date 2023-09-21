import 'package:flutter/material.dart';
import 'package:tugas_coder/widgets/email_tile.dart';
import 'package:tugas_coder/widgets/gmail_app_bar.dart';

class EmailListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScroller) => [
          GmailAppBar(),
        ],
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) => EmailTile(
            sender: "User",
            subject: "Subject Email",
            content: "Content Email",
            day: "01",
            month: "January",
            isImportant: false,
          ),
        ),
      ),
    );
  }
}
