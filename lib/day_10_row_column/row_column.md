
**Row**

Flutter'da Row bileşeni, yatay olarak hizalanan birden fazla çocuk bileşenin bulunduğu bir bileşendir. Row bileşenini kullanarak, yatayda hizalanan bir dizi bileşen oluşturabilirsiniz.

Aşağıdaki örnek kod, Row bileşenini kullanarak iki metin bileşenini yatayda hizalar:

Row(
  children: [
    Text('Merhaba, '),
    Text('Dünya!'),
  ],
)


Yukarıdaki örnekte, Row bileşeni oluşturulur ve children özelliği atanır. children özelliği, yatayda hizalanacak çocuk bileşenlerin listesini içerir. Bu örnekte, iki Text bileşeni kullanılmıştır.

Row bileşeni, birçok özelliğe sahiptir. Örneğin, mainAxisAlignment özelliği, çocuk bileşenlerin yatay hizalanma yöntemini belirler. mainAxisAlignment özelliğine MainAxisAlignment.start, MainAxisAlignment.center veya MainAxisAlignment.end değerleri atanabilir. crossAxisAlignment özelliği, çocuk bileşenlerin dikey hizalanma yöntemini belirler. crossAxisAlignment özelliğine CrossAxisAlignment.start, CrossAxisAlignment.center veya CrossAxisAlignment.end değerleri atanabilir. mainAxisSize özelliği, Row bileşeninin yükseklik ve genişlik ölçülerini belirler. mainAxisSize özelliğine MainAxisSize.min veya MainAxisSize.max değerleri atanabilir.

**Column**

Flutter'da Column bileşeni, dikey olarak hizalanan birden fazla çocuk bileşenin bulunduğu bir bileşendir. Column bileşenini kullanarak, dikeyde hizalanan bir dizi bileşen oluşturabilirsiniz.

Aşağıdaki örnek kod, Column bileşenini kullanarak iki metin bileşenini dikeyde hizalar:

Column(
  children: [
    Text('Merhaba,'),
    Text('Dünya!'),
  ],
)

Yukarıdaki örnekte, Column bileşeni oluşturulur ve children özelliği atanır. children özelliği, dikeyde hizalanacak çocuk bileşenlerin listesini içerir. Bu örnekte, iki Text bileşeni kullanılmıştır.

Column bileşeni, birçok özelliğe sahiptir. Örneğin, mainAxisAlignment özelliği, çocuk bileşenlerin dikey hizalanma yöntemini belirler. mainAxisAlignment özelliğine MainAxisAlignment.start, MainAxisAlignment.center veya MainAxisAlignment.end değerleri atanabilir. crossAxisAlignment özelliği, çocuk bileşenlerin yatay hizalanma yöntemini belirler. crossAxisAlignment özelliğine CrossAxisAlignment.start, CrossAxisAlignment.center veya CrossAxisAlignment.end değerleri atanabilir. mainAxisSize özelliği, Column bileşeninin yükseklik ve genişlik ölçülerini belirler. mainAxisSize özelliğine MainAxisSize.min veya MainAxisSize.max değerleri atanabilir.