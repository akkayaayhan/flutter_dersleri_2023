import 'package:flutter/material.dart';

class SizedBoxYapisi extends StatelessWidget {
  const SizedBoxYapisi({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0, // Kutunun genişliği
      height: 50.0, // Kutunun yüksekliği
      child: Container(
        color: Colors.blue, // Kutunun arka plan rengi
        child: Text(
          'Merhaba Dünya', // Kutunun içeriği
          style:
              TextStyle(fontSize: 24.0), // Kutunun içeriğinin stil özellikleri
        ),
      ),
    );
  }
}
