import 'package:flutter/material.dart';

class BurcSayfasi extends StatefulWidget {
  @override
  _BurcSayfasiState createState() => _BurcSayfasiState();
}

class _BurcSayfasiState extends State<BurcSayfasi> {
  TextEditingController _dateController = TextEditingController();
  String _burc = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burç Hesaplama'),
        backgroundColor: Colors.greenAccent.shade100,
      ),
      body: Padding(

        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/zodiac.jpg',
              width: 400,
              height: 160,
            ),
            SizedBox(height: 20),
            TextField(
              controller: _dateController,
              decoration: InputDecoration(
                labelText: 'Doğum Tarihiniz (GG/AA/YYYY)',
                labelStyle: TextStyle(color: Colors.black87),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(),
                ),
              ),
              style: TextStyle(color: Colors.black87),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _burc = hesaplaBurc(_dateController.text);
                });
              },
              child: Text('Burcunu Hesapla',style: TextStyle(fontWeight:FontWeight.w600),),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent.shade100),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black87),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.symmetric(horizontal: 120, vertical: 15),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            _burc.isNotEmpty
                ? Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  'Burcunuz: $_burc',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black87),
                ),
              ),
            )
                : Container(),
          ],
        ),
      ),
    );
  }

  String hesaplaBurc(String date) {
    List<int> tarihParcalari = date.split('/').map((e) => int.parse(e)).toList();
    int gun = tarihParcalari[0];
    int ay = tarihParcalari[1];

    String burc = '';

    if ((ay == 3 && gun >= 21) || (ay == 4 && gun <= 20)) {
      burc = 'Koç';
    } else if ((ay == 4 && gun >= 21) || (ay == 5 && gun <= 21)) {
      burc = 'Boğa';
    } else if ((ay == 5 && gun >= 22) || (ay == 6 && gun <= 21)) {
      burc = 'İkizler';
    } else if ((ay == 6 && gun >= 22) || (ay == 7 && gun <= 22)) {
      burc = 'Yengeç';
    } else if ((ay == 7 && gun >= 23) || (ay == 8 && gun <= 22)) {
      burc = 'Aslan';
    } else if ((ay == 8 && gun >= 23) || (ay == 9 && gun <= 22)) {
      burc = 'Başak';
    } else if ((ay == 9 && gun >= 23) || (ay == 10 && gun <= 22)) {
      burc = 'Terazi';
    } else if ((ay == 10 && gun >= 23) || (ay == 11 && gun <= 21)) {
      burc = 'Akrep';
    } else if ((ay == 11 && gun >= 22) || (ay == 12 && gun <= 21)) {
      burc = 'Yay';
    } else if ((ay == 12 && gun >= 22) || (ay == 1 && gun <= 21)) {
      burc = 'Oğlak';
    } else if ((ay == 1 && gun >= 22) || (ay == 2 && gun <= 19)) {
      burc = 'Kova';
    } else if ((ay == 2 && gun >= 20) || (ay == 3 && gun <= 20)) {
      burc = 'Balık';
    }

    return burc;
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }
}

void main() {
  runApp(MaterialApp(
    home: BurcSayfasi(),
  ));
}
