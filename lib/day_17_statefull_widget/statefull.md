Flutter'da Stateful widget, değişen veriye sahip olan widget'lar için kullanılır. Stateful widget'lar, içerdiği değişkenlerin değeri değiştiğinde, ekrandaki görünümü güncelleyebilir.

Stateful widget, iki ayrı sınıfı içerir: Stateful widget sınıfı ve State sınıfı. Stateful widget sınıfı, genellikle uygulamanın ana widget'ıdır ve State sınıfı, widget'ın durumunu saklar ve değiştirebilir.

Aşağıdaki örnek, bir sayacın değerini artıran bir Stateful widget'in kullanımını göstermektedir:

import 'package:flutter/material.dart';

class StatefullYapisi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have clicked the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}


Bu kodda, MyStatefulWidget sınıfı, StatefulWidget sınıfından kalıtım alır ve _MyStatefulWidgetState sınıfı, State sınıfından kalıtım alır. _counter değişkeni, State sınıfında tanımlanır ve _incrementCounter() fonksiyonu, butona her tıklandığında değerini artırır.

setState() fonksiyonu, _counter değişkeninin değerinin değiştirildiğini bildirir ve widget'ın durumunu yeniden oluşturmasını sağlar. Bu, ekrandaki sayı değerinin güncellenmesini sağlar.

Stateful widget'lar, özellikle kullanıcı etkileşimlerine bağlı olarak güncellenmesi gereken uygulamalar için oldukça kullanışlıdır. Ancak, diğer widget'lara göre daha yüksek bir performans maliyeti olabilirler, bu nedenle uygulamalarda doğru şekilde kullanılmalıdırlar.