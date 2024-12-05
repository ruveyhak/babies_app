import 'package:final_project/gunluk.dart';
import 'package:flutter/material.dart';
import 'package:final_project/burc_sayfasi.dart';
import 'package:final_project/kiz_sayfasi.dart';
import 'package:final_project/erkek_sayfasi.dart';
import 'package:final_project/gunluk.dart';

class AnaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnaSayfa',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/kiz': (context) => KizSayfasi(),
        '/erkek': (context) => ErkekSayfasi(),
        '/burc': (context) => BurcSayfasi(),
        '/gunluk': (context) => GunlukSayfasi(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Babies'),
        backgroundColor: Colors.greenAccent.shade100,
      ),
      backgroundColor: Colors.cyan.withOpacity(1),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.greenAccent.shade100,
              ),
              child: Text(
                'Menü',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Ana Sayfa', style: TextStyle(color: Colors.black87),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Kız Sayfası', style: TextStyle(color: Colors.black87),),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/kiz');
              },
            ),
            ListTile(
              title: Text('Erkek Sayfası', style: TextStyle(color: Colors.black87),),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/erkek');
              },
            ),
            ListTile(
              title: Text('Burç Hesaplama', style: TextStyle(color: Colors.black87),),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/burc');
              },
            ),
            ListTile(
              title: Text('Günlük', style: TextStyle(color: Colors.black87),),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/gunluk');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipOval(
                child: Image.asset(
                  'assets/baby.jpg',
                  width: 200,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Hoş Geldiniz!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Bebeğiniz hakkında gelişmeleri öğrenmeye hazır mısınız?  '
                    'Lütfen cinsiyetini seçin'
                ,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/erkek');
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                ),
                child: Text(
                  'Erkek',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/kiz');
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.pink,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                ),
                child: Text(
                  'Kız',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
