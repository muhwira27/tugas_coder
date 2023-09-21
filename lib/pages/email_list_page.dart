import 'package:flutter/material.dart';

class EmailListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScroller) => [
          SliverAppBar(),
        ],
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) => Container(),
        ),
      ),
    );
  }
}
