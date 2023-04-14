
**Container**
Flutter'da Container widget'ı, diğer widget'ları gruplamak, ölçüleri ayarlamak, kenar boşluklarını ve arka plan rengini ayarlamak ve daha birçok özelleştirme yapmak için kullanabileceğiniz bir yapıdır.

width: Container'ın genişliği. Bu özellik opsiyoneldir.
height: Container'ın yüksekliği. Bu özellik opsiyoneldir.
color: Container'ın arka plan rengi. Bu özellik opsiyoneldir.
margin: Container'ın kenar boşluğu. Sol, üst, sağ ve alt kenar boşluklarını ayarlamak için EdgeInsets nesnesi kullanılır. Bu özellik opsiyoneldir.
padding: Container'ın içeriği ile kenar arasındaki boşluk. Sol, üst, sağ ve alt kenar boşluklarını ayarlamak için EdgeInsets nesnesi kullanılır. Bu özellik opsiyoneldir.
alignment: Container'ın içeriğini hizalamak için kullanılır. Bu özellik opsiyoneldir.
borderRadius: Container'ın köşelerini yuvarlamak için kullanılır. Bu özellik opsiyoneldir.
border: Container'ın kenarlık çizgisi. Kenarlık rengi ve kalınlığını ayarlamak için Border.all() metodu kullanılır. Bu özellik opsiyoneldir.
child: Container'ın içeriği. Bu özellik zorunlu bir özelliktir.
Yukarıdaki özellikler, Container widget'ının en sık kullanılan özellikleridir. `

**Sizedbox**

Flutter'da SizedBox widget'ı, belirli bir boyutta boş bir kutu oluşturmak için kullanılan bir widget'tır.
width: Kutunun genişliği. Bu özellik opsiyoneldir.
height: Kutunun yüksekliği. Bu özellik opsiyoneldir.
child: Kutunun içeriği. Bu özellik zorunlu bir özelliktir.
SizedBox widget'ının width ve height özellikleriyle birlikte kullanarak kutunun boyutunu ayarlayabilirsiniz. child özelliği, kutunun içeriğini belirler. Yukarıdaki örnekte, Container widget'ı kullanılarak kutunun arka plan rengi ve içeriği belirlenir.

SizedBox widget'ı ayrıca expand özelliği ile de kullanılabilir. Bu özellik, widget'ın, bulunduğu tüm alanı kaplamasını sağlar. Aşağıdaki örnek, SizedBox.expand özelliğini kullanarak, kutunun bulunduğu tüm alanı kaplamasını sağlar:

SizedBox.expand(
  child: Container(
    color: Colors.blue, // Kutunun arka plan rengi
    child: Text(
      'Merhaba Dünya', // Kutunun içeriği
      style: TextStyle(fontSize: 24.0), // Kutunun içeriğinin stil özellikleri
    ),
  ),
);

