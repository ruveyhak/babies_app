import 'package:flutter/material.dart';
import 'dart:io';

class NotDetaySayfasi extends StatelessWidget {
  final Map<String, dynamic> not;

  NotDetaySayfasi({required this.not});

  @override
  Widget build(BuildContext context) {
    final tarih = DateTime.parse(not['date']);

    return Scaffold(
      appBar: AppBar(
        title: Text('Not Detayı'),
        backgroundColor: Colors.greenAccent.shade100,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              not['text'],
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              '${tarih.day}/${tarih.month}/${tarih.year} ${tarih.hour}:${tarih.minute}',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 10),
            if (not['imagePath'] != null)
              Image.file(File(not['imagePath']), height: 200),
          ],
        ),
      ),
    );
  }
}
