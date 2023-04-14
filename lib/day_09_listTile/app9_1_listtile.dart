import 'package:flutter/material.dart';

class ListTileYapisi extends StatelessWidget {
  const ListTileYapisi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/avatar.png'),
        ),
        title: Text('Kullanıcı Adı'),
        subtitle: Text('kullanici@ornek.com'),
        trailing: Icon(Icons.arrow_forward),
        selected: true,
        dense: true,
        enabled: false,
        onTap: () {
          // Liste öğesi tıklandığında yapılacak işlem
        },
      ),
    );
  }
}
