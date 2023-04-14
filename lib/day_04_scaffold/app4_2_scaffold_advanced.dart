import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scaffold samples')),
      body: const Text('merhaba'),
      backgroundColor: Colors.red,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    height: 200,
                  ));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomNavigationBar: Container(
        height: 200,
        decoration: ProjectContainerDecoration(),
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'a'),
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'b'),
        ]),
      ),
    );
  }
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
            boxShadow: const [
              BoxShadow(
                  color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12)
            ],
            border: Border.all(width: 10, color: Colors.white12));
}
