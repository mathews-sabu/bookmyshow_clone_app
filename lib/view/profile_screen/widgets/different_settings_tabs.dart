// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DifferentSettingsTab extends StatelessWidget {
  const DifferentSettingsTab({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon1,
    // required this.trailing
  });
  final IconData icon1;
  final String title;
  final String subTitle;
  //final String trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(color: Colors.grey.withOpacity(.3)),
      )),
      child: ListTile(
        leading: Icon(icon1),
        title: Text(title),
        subtitle: Text(subTitle),
        trailing: Icon(Icons.chevron_right),
      ),
    );
  }
}
