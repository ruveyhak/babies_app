import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:final_project/not_detay_sayfasi.dart';

class GunlukSayfasi extends StatefulWidget {
  @override
  _GunlukSayfasiState createState() => _GunlukSayfasiState();
}

class _GunlukSayfasiState extends State<GunlukSayfasi> {
  final TextEditingController _notKontrol = TextEditingController();
  File? _resim;
  List<Map<String, dynamic>> _notlar = [];

  @override
  void initState() {
    super.initState();
    _notlariYukle();
  }

  Future<void> _notlariYukle() async {
    final prefs = await SharedPreferences.getInstance();
    final String? notlarJson = prefs.getString('notlar');
    if (notlarJson != null) {
      setState(() {
        _notlar = List<Map<String, dynamic>>.from(json.decode(notlarJson));
      });
    }
  }

  Future<void> _notKaydet() async {
    final now = DateTime.now();
    final yeniNot = {
      'text': _notKontrol.text,
      'date': now.toIso8601String(),
      'imagePath': _resim?.path
    };

    setState(() {
      _notlar.add(yeniNot);
    });

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('notlar', json.encode(_notlar));

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Not kaydedildi!')));
  }

  Future<void> _notSil(int index) async {
    setState(() {
      _notlar.removeAt(index);
    });

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('notlar', json.encode(_notlar));

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Not silindi!')));
  }

  Future<void> _resimSec() async {
    final secilenDosya = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (secilenDosya != null) {
      setState(() {
        _resim = File(secilenDosya.path);
      });
    }
  }

  void _notDetayinaGit(BuildContext context, Map<String, dynamic> not) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NotDetaySayfasi(not: not),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Günlük'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _notKontrol,
              maxLines: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Notunuzu girin',
              ),
            ),
            SizedBox(height: 10),
            _resim != null
                ? Image.file(_resim!, height: 100)
                : Container(
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Center(child: Text('Resim yok', style: TextStyle(color: Colors.grey.shade800))),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                ElevatedButton(
                  onPressed: _resimSec,
                  child: Text('Resim Seç'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    _notKaydet();
                    _notKontrol.clear();
                    setState(() {
                      _resim = null;
                    });
                  },
                  child: Text('Notu Kaydet'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _notlar.length,
                itemBuilder: (context, index) {
                  final not = _notlar[index];
                  final tarih = DateTime.parse(not['date']);
                  return Card(
                    child: ListTile(
                      title: Text(not['text']),
                      subtitle: Text(
                        '${tarih.day}/${tarih.month}/${tarih.year} ${tarih.hour}:${tarih.minute}',
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () => _notSil(index),
                      ),
                      onTap: () => _notDetayinaGit(context, not),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
