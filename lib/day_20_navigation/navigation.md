**Navigation - Sayfa Yönlendirmeleri**

Flutter'da sayfa yönlendirmesi yapmak için birkaç farklı yöntem vardır. Bunlar arasında, Route Sınıfı, Navigator Sınıfı ve PageRouteBuilder Sınıfı gibi birçok yöntem vardır. Bu yöntemlerden en yaygın kullanılanlarından bazıları şunlardır:

1. Route Sınıfı
Route sınıfı, bir sayfayı diğerine geçmek için kullanılan bir yöntemdir. Yeni bir sayfa eklemek istediğinizde, önce bir route tanımlamalısınız. Bu nedenle, MaterialPageRoute sınıfı, geleneksel olarak kullanılan bir yöntemdir. Bu sınıf, yavaş yavaş kullanımdan kalkıyor ve yerini MaterialPageRoute sınıfına bırakıyor.

Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SecondScreen()),
);

2. Navigator Sınıfı
Navigator Sınıfı, sayfa yönlendirmelerinde oldukça yaygın olarak kullanılan bir başka sınıftır. Bu yöntemde, Navigator.push() yöntemi kullanılarak bir sonraki sayfa ekrana getirilir.

Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SecondScreen()),
);

3. PageRouteBuilder Sınıfı
PageRouteBuilder sınıfı, özelleştirilmiş bir geçiş animasyonu sağlamak için kullanılır. Bu sınıfın kullanımı biraz daha karmaşıktır. Ancak, buildTransition() yöntemi kullanılarak özelleştirilmiş geçiş animasyonları oluşturulabilir.

Navigator.push(
  context,
  PageRouteBuilder(
    transitionDuration: Duration(seconds: 1),
    pageBuilder: (_, __, ___) => SecondScreen(),
    transitionsBuilder: (_, anim, __, child) {
      return FadeTransition(
        opacity: anim,
        child: child,
      );
    },
  ),
);

