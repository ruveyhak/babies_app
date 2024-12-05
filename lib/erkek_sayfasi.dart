import 'package:flutter/material.dart';
import 'package:final_project/containerItem_sayfasi.dart';
import 'package:final_project/ay_sayfasi.dart';


class ErkekSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Erkek Sayfası'),
        backgroundColor: Colors.cyan.withOpacity(0.5),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(10),
        childAspectRatio: 1,
        mainAxisSpacing: 10,
        crossAxisSpacing: 30,
        children: <Widget>[
          for (int i = 1; i <= 12; i++)
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AySayfasi(
                      cinsiyet: 'Erkek',
                      ay: '$i. Ay',
                    ),
                  ),
                );
              },
              child: Container(
                width: 100,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.cyan[200]!,
                  borderRadius: BorderRadius.circular(70),
                ),
                child: Center(
                  child: Text(
                    '$i. Ay',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
