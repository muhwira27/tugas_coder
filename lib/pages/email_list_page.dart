import 'package:flutter/material.dart';
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
          itemCount: 1,
          itemBuilder: (context, index) => Container(),
        ),
      ),
    );
  }
}
