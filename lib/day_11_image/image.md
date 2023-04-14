1. NetworkImage
NetworkImage widget'i, bir URL'den bir resim görüntülemek için kullanılır. Aşağıdaki örnek, NetworkImage kullanarak bir resmi görüntüler:

dart
Copy code
Image(image: NetworkImage('https://picsum.photos/250?image=9'))
2. AssetImage
AssetImage widget'i, uygulamanın varlıklar klasöründen bir resim görüntülemek için kullanılır. Aşağıdaki örnek, AssetImage kullanarak bir resmi görüntüler:


Image(image: AssetImage('assets/images/image.png'))
3. FileImage
FileImage widget'i, cihazın yerel dosya sistemi üzerindeki bir resmi görüntülemek için kullanılır. Aşağıdaki örnek, FileImage kullanarak bir resmi görüntüler:

Image(image: FileImage(File('/path/to/image.jpg')))

4. MemoryImage
MemoryImage widget'i, hafıza içindeki bir resmi görüntülemek için kullanılır. Aşağıdaki örnek, MemoryImage kullanarak bir resmi görüntüler:


final Uint8List bytes = ... // Resim verisi
Image(image: MemoryImage(bytes))

**Yerel Resim İşlemleri**

Flutter'da, projenizde yer alan resimleri kullanmak için AssetImage sınıfını kullanabilirsiniz. AssetImage sınıfı, ImageProvider sınıfından türetilmiştir ve statik bir kaynak olarak projenizin içinde yer alan bir dosya sistemidir. Bu nedenle, proje içindeki resimleriniz, pubspec.yaml dosyanızdaki assets bölümüne eklenmelidir.

Aşağıdaki örnek, AssetImage sınıfını kullanarak bir resmi ekranda göstermektedir:

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asset Image Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Asset Image Example'),
        ),
        body: Center(
          child: Container(
            child: Image(
              image: AssetImage('assets/images/flutter_logo.png'),
            ),
          ),
        ),
      ),
    );
  }
}

Yukarıdaki örnekte, Image widget'ı, AssetImage sınıfından oluşturulan bir nesne kullanarak flutter_logo.png adlı bir resmi görüntüler. Resimler, assets/images/ dizini altında saklandığından, AssetImage sınıfı, assets/images/flutter_logo.png dosya yolunu içerir.

pubspec.yaml dosyanızda, resim dosyalarınızı projenizin assets bölümüne eklemelisiniz. Örneğin, yukarıdaki örnekte kullanılan flutter_logo.png resmi eklemek için, pubspec.yaml dosyanızdaki assets bölümüne şu kodu ekleyebilirsiniz:

flutter:
  assets:
    - assets/images/flutter_logo.png
