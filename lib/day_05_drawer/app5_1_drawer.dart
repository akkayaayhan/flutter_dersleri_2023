import 'package:flutter/material.dart';

class DrawerYapisi extends StatelessWidget {
  const DrawerYapisi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Başlık'), // Uygulama çubuğunda gösterilecek başlık
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menü'), // Drawer üstbilgisi
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading:
                  Icon(Icons.person), // Liste öğesinin başına eklenen simge
              title: Text('Profil'),
              onTap: () {
                // Liste öğesine tıklandığında gerçekleştirilecek işlemler
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Ayarlar'),
              onTap: () {
                // Liste öğesine tıklandığında gerçekleştirilecek işlemler
              },
            ),
          ],
        ),
      ),
      body: Container(
        // Ekranın ana içeriği
        child: Text('Merhaba Dünya'),
      ),
    );
  }
}
