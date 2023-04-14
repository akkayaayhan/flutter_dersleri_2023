import 'package:flutter/material.dart';

class MyBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter BottomSheet Örneği'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Alt Sayfayı Aç'),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 200,
                  child: Center(
                    child: Text('Bu alt sayfa'),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
