import 'package:flutter/material.dart';

class AppBarYapisi extends StatelessWidget {
  const AppBarYapisi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Başlık'),
        backgroundColor: Colors.blue,
        elevation: 4,
        brightness: Brightness.dark,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Geri düğmesine tıklandığında yapılacak işlemler burada tanımlanabilir.
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Ayarlar düğmesine tıklandığında yapılacak işlemler burada tanımlanabilir.
            },
          ),
        ],
      ),
    );
  }
}
