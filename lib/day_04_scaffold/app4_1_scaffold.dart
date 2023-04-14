import 'package:flutter/material.dart';

class ScaffoldYapisi extends StatelessWidget {
  const ScaffoldYapisi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Başlık'), // Uygulama çubuğunda gösterilecek başlık
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings), // Uygulama çubuğunda gösterilecek simge
            onPressed: () {
              // Simge tıklandığında gerçekleştirilecek işlemler
            },
          ),
        ],
      ),
      body: Container(
        // Ekranın ana içeriği
        child: Text('Merhaba Dünya'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add), // Kayan eylem düğmesinde gösterilecek simge
        onPressed: () {
          // Kayan eylem düğmesi tıklandığında gerçekleştirilecek işlemler
        },
      ),
    );
  }
}
