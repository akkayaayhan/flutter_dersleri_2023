Flutter'da PageView widget'ı, yatay veya dikey bir kaydırılabilir sayfa kümesi oluşturmak için kullanılır. Bu widget, kullanıcılara sayfalar arasında kaydırma özelliği sağlar.

Aşağıdaki örnek, PageView widget'ının kullanımını göstermektedir:

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final List<String> pages = ['Page 1', 'Page 2', 'Page 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Text(
              pages[index],
              style: TextStyle(fontSize: 30),
            ),
          );
        },
        itemCount: pages.length,
      ),
    );
  }
}

Bu kodda, PageView.builder widget'ı kullanılmıştır. itemBuilder fonksiyonu, her bir sayfanın içeriğini oluşturmak için kullanılır. Burada, her bir sayfa, merkezde yer alan ve bir metin içeren bir Text widget'ıdır. itemCount özelliği, toplam sayfa sayısını belirler ve bu örnekte, pages listesinin uzunluğuna ayarlanır.

PageView widget'ı, varsayılan olarak yatay olarak ayarlanır, ancak axis özelliğiyle dikey olarak da ayarlanabilir. Ayrıca, PageView widget'ı ile sayfaların kaydırılması kontrol edilebilir ve sayfa geçiş animasyonları da özelleştirilebilir.

PageView widget'ı, özellikle çok sayfalı uygulamalar ve yatay olarak kaydırılabilir sayfalar gerektiren uygulamalar için oldukça kullanışlıdır.