Flutter'da AppBar bileşeni, genellikle bir ekranın üst kısmında yer alan bir çubuk olarak kullanılır. Bu bileşen, başlıklar, düğmeler, arama kutuları ve diğer bileşenleri içerebilir.

Aşağıdaki örnek kod, basit bir AppBar örneği göstermektedir:

AppBar(
  title: Text('Başlık'),
  actions: [
    IconButton(
      icon: Icon(Icons.settings),
      onPressed: () {
        // Ayarlar düğmesine tıklandığında yapılacak işlemler burada tanımlanabilir.
      },
    ),
  ],
)

Flutter'da AppBar bileşeni, genellikle bir ekranın üst kısmında yer alan bir çubuk olarak kullanılır. Bu bileşen, başlıklar, düğmeler, arama kutuları ve diğer bileşenleri içerebilir.

Aşağıdaki örnek kod, basit bir AppBar örneği göstermektedir:

dart
Copy code
AppBar(
  title: Text('Başlık'),
  actions: [
    IconButton(
      icon: Icon(Icons.settings),
      onPressed: () {
        // Ayarlar düğmesine tıklandığında yapılacak işlemler burada tanımlanabilir.
      },
    ),
  ],
)
Yukarıdaki örnekte, AppBar bileşeni oluşturulur. title özelliği, AppBar içindeki başlığı belirtir. Bu örnekte, başlık metni "Başlık" olarak belirlenmiştir. actions özelliği, AppBar'ın sağ tarafında bulunan ikincil işlemleri belirtir. Bu örnekte, "Ayarlar" ikon düğmesi belirtilmiştir. IconButton widget'ı, Ayarlar düğmesini oluşturmak için kullanılır. onPressed özelliği belirtilerek, Ayarlar düğmesine tıklandığında yapılacak işlemler tanımlanır.

AppBar bileşenleri, çeşitli özelliklere sahiptir. Örneğin, backgroundColor özelliği, AppBar'ın arka plan rengini belirler. elevation özelliği, AppBar'ın z-eksenindeki yüksekliğini belirler. brightness özelliği, AppBar'ın parlaklık seviyesini belirler.