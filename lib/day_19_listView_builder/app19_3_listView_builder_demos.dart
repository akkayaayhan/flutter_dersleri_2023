import 'package:flutter/material.dart';

//1.ilk önce stf ile yapıyı oluştur
class ListViewBuilderDemos extends StatefulWidget {
  const ListViewBuilderDemos({super.key});

  @override
  State<ListViewBuilderDemos> createState() => _ListViewBuilderDemosState();
}

class _ListViewBuilderDemosState extends State<ListViewBuilderDemos> {
  //4.Bu alanda bir liste oluştur.
  late final List<CollectionModel> _items;

  //5.bu listeyi initstate de çağıralım.

  @override
  void initState() {
    super.initState();

    _items = CollectionItems().items; //Liste kaynağını _items a yükledik.
  }

  //6.ListView.Builder da tasarımı oluşturalım.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: _items.length,
        padding: PaddindUtility().paddingHorizontal,
        itemBuilder: (context, index) {
          return _CategoryCard(model: _items[index]);
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddindUtility().paddinBottom,
      child: Padding(
        padding: PaddindUtility().paddingGeneral,
        child: Column(
          children: [
            Image.asset(_model.imagePath, fit: BoxFit.fill),
            Padding(
              padding: PaddindUtility().paddingTop,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(_model.title), Text('${_model.price} eth')],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//2.Kullanacağın modele ait sınıfı oluştur.
class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel(
      {required this.imagePath, required this.title, required this.price});
}

//3.Veri kaynağını oluştur.

class CollectionItems {
  late final List<CollectionModel> items;

  CollectionItems() {
    items = [
      //Not: Satırı veya bloğu kopyalamak için alt+shift basılı tut yön tuşlarına bas
      CollectionModel(
          imagePath: ProjectImages.imageCollection,
          title: 'Abstract Art',
          price: 3.4),
      CollectionModel(
          imagePath: ProjectImages.imageCollection,
          title: 'Abstract Art2',
          price: 3.4),
      CollectionModel(
          imagePath: ProjectImages.imageCollection,
          title: 'Abstract Art3',
          price: 3.4),
      CollectionModel(
          imagePath: ProjectImages.imageCollection,
          title: 'Abstract Art4',
          price: 3.4),
    ];
  }
}

class ProjectImages {
  static const imageCollection = "asset/png/image_collection.png";
}

class PaddindUtility {
  final paddingTop = const EdgeInsets.only(top: 10);
  final paddinBottom = const EdgeInsets.only(bottom: 20);
  final paddingGeneral = const EdgeInsets.all(20);
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20);
}
