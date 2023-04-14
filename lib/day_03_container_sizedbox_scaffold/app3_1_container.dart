import 'package:flutter/material.dart';

class ContainerYapisi extends StatelessWidget {
  const ContainerYapisi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Container'ın genişliği
        width: 200.0,
        // Container'ın yüksekliği
        height: 100.0,
        // Container'ın içi dolu renk
        color: Colors.blue,
        // Kenar boşluğu (sol, üst, sağ, alt)
        margin: EdgeInsets.all(10.0),
        // İçerik alanının kenar boşluğu (sol, üst, sağ, alt)
        padding: EdgeInsets.all(20.0),
        // İçeriği hizalamak için kullanılır
        alignment: Alignment.center,
        // Dairesel kenar yarıçapı
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          // Kenarlığı çizmek için kullanılır
          border: Border.all(
            color: Colors.black,
            width: 2.0,
          ),
        ),
        // İçeriği kaydırmak için kullanılır
        child: SingleChildScrollView(
          child: Text(
            'Merhaba Dünya',
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}
