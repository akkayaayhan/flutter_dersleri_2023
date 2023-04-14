import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  final String imageUrl =
      'https://picsum.photos/250?image=9'; // Örnek bir internet resmi URL'si

  final String assetPath =
      'assets/images/image.png'; // Örnek bir varlık dosyası yolu

  final String filePath = '/path/to/image.jpg'; // Örnek bir yerel dosya yolu

  final Uint8List bytes =
      Uint8List.fromList([]); // Örnek bir hafıza içi resim verisi

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: NetworkImage(imageUrl)),
            SizedBox(height: 16),
            Image(image: AssetImage(assetPath)),
            SizedBox(height: 16),
            Image(image: FileImage(File(filePath))),
            SizedBox(height: 16),
            Image(image: MemoryImage(bytes)),
          ],
        ),
      ),
    );
  }
}
