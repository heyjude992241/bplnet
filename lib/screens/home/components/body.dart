import 'package:flutter/material.dart';
import 'package:bplnet/screens/home/components/announcements.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
          children: [
            TopBar(),
            SizedBox(height: 15,),
            Announcement(),
          ],
        ),
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Selamat datang Hafiz!',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
          Text(
            'Unit Pengurusan Maklumat',
            style: TextStyle(fontSize: 15)
          )
        ],
      ),
    );
  }
}
