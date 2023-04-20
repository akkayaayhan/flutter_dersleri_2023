**Stack Widget**

Flutter'da Stack widget, diğer widget'ları üst üste yerleştirmek ve eşleştirmek için kullanılır. Bu yapı, bir widget'ın diğer widget'ların üzerinde veya altında gösterilmesini sağlar.

Aşağıdaki örnek, Stack widget'ının kullanımını göstermektedir. Örneğin, bir arka plan resmi ve üzerindeki bir metin kutusu ve bir buton içeren basit bir tasarımımız olsun:

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Image.network(
              'https://picsum.photos/500/800',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your name',
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Submit'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


Bu kodda, Stack widget'ı, resim widget'ını ve diğer widget'ları içeren children listesini alır. İlk çocuk widget, Image widget'ıdır ve arka plan resmini yükler. Image widget'ı, fit parametresi ile resmin boyutunu ve width/height parametreleri ile ekran boyutunu dolduracak şekilde ayarlanır.

Stack widget'ının ikinci çocuk widget'ı, Center widget'ıdır. Bu widget, çocuklarını dikey olarak hizalar ve ana ekranda ortalar. Center widget'ının çocukları, Column widget'ıdır ve iki çocuğu vardır: bir TextField ve bir ElevatedButton.

TextField, bir girdi kutusu oluşturur ve kullanıcının bir metin girerek göndermesine olanak tanır. ElevatedButton, basit bir gönderme düğmesidir.

Tüm bu widget'lar Stack widget'ı içinde yer alır ve Stack widget'ı, Image widget'ını arka planda ve diğer widget'ları ön planda görüntüler. Bu, bir arka plan resmi ve üzerindeki metin kutusu ve buton gibi basit bir tasarım yapmak için kullanılabilir.


**Positioned Widget**


Flutter'da Positioned widget, Stack widget'ı içinde bulunan çocuk widget'ların konumunu belirlemek için kullanılır. Positioned widget'ı, x ve y koordinatlarını belirleyerek, bir widget'ın tam olarak nerede konumlandırılacağını belirler.

Aşağıdaki örnek, Positioned widget'ının kullanımını göstermektedir. Örneğin, bir Stack widget'ı içinde iki resim ve her resmin farklı bir konumda yer almasını istediğimizi varsayalım:

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              left: 50,
              top: 50,
              child: Image.network(
                'https://picsum.photos/200/300',
              ),
            ),
            Positioned(
              right: 50,
              bottom: 50,
              child: Image.network(
                'https://picsum.photos/300/200',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Bu kodda, Positioned widget'ı iki defa kullanılır ve her birinin child'ı bir Image widget'ıdır. İlk Positioned widget'ı, sol üst köşede yer alan bir resim gösterir. left ve top özellikleri, resmin sol ve üst kenarlarının ekrandaki sol üst köşeye göre konumunu belirler.

İkinci Positioned widget'ı, sağ alt köşede yer alan bir resim gösterir. right ve bottom özellikleri, resmin sağ ve alt kenarlarının ekrandaki sağ alt köşeye göre konumunu belirler.

Böylece Positioned widget'ı, Stack widget'ının içindeki çocuk widget'ların konumunu belirlemek için kullanılır. Bu örnekte, iki resmi farklı konumlarda konumlandırmak için kullanılmıştır.