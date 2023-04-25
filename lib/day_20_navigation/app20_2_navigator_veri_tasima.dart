import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigasyon Veri Taşıma',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  TextEditingController _isimController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anasayfa'),
      ),
      body: Center(
          child: Column(
        children: [
          TextField(
            controller: _isimController,
            decoration: InputDecoration(
              hintText: 'isminizi giriniz',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetaySayfasi(
                              isim: _isimController.text,
                            )));
              },
              child: Text("Diğer Sayfaya Geç"))
        ],
      )),
    );
  }
}

class DetaySayfasi extends StatelessWidget {
  final String isim;

  const DetaySayfasi({super.key, required this.isim});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detay Sayfası')),
      body: Center(
          child: Column(
        children: [
          Text(
            'Merhaba $isim',
            style: TextStyle(fontSize: 24),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Geri Dön"))
        ],
      )),
    );
  }
}
