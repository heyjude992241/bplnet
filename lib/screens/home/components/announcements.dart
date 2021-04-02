import 'package:flutter/material.dart';

class Announcement extends StatefulWidget {
  @override
  _AnnouncementState createState() => _AnnouncementState();
}

class _AnnouncementState extends State<Announcement> {
  
  @override
  Widget build(BuildContext context) { 
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        _title(),
        _highlight(size),
      ],
    );
  }

  Widget _title(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Pengumuman', 
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                child: Icon(Icons.info_outline, size: 18,),
                onTap: (){
                  print('Last updated: just now');
                },
              )            
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: GestureDetector(
              child: Text(
                'Lihat semua',
                style: TextStyle(
                  color: Colors.lightBlue,
                  decoration: TextDecoration.underline
                ),
              ),
              onTap: (){ print('Lihat semua'); },
            ),
          )
        ],
      ),
    );
  }

  Widget _highlight(Size size){
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            height: 150,
            decoration: BoxDecoration(
              color: Colors.grey[200]
            ),
          ),
        ),
      ],
    );
  }
}