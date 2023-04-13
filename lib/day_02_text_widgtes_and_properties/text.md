**Flutter Text Widget**
Flutter'da Text widget'ı, uygulamanızda metinleri görüntülemek için kullanabileceğiniz basit bir widget'dır. Text widget'ı, aşağıdaki özelliklere sahiptir:

data: Metnin kendisini belirler. Bu özellik zorunlu bir özelliktir.
Örnek: Text('Merhaba Dünya')

style: Metnin görüntüsünü belirleyen TextStyle nesnesidir. Yazı tipi, yazı boyutu, rengi, vurgulaması, gölgesi vb. özellikleri belirleyebilirsiniz. Bu özellik opsiyoneldir.
Örnek: Text('Merhaba Dünya', style: TextStyle(fontSize: 20.0, color: Colors.blue))

textAlign: Metnin hizalanacağı yönü belirler. TextAlign.left, TextAlign.center, TextAlign.right, TextAlign.justify ve TextAlign.start ve TextAlign.end değerleri alabilir. Bu özellik opsiyoneldir ve varsayılan olarak sol hizalıdır.
Örnek: Text('Merhaba Dünya', textAlign: TextAlign.center)

maxLines: Metnin kaç satıra sığdırılacağını belirler. Bu özellik opsiyoneldir ve varsayılan olarak tek bir satırı gösterir.
Örnek: Text('Merhaba Dünya', maxLines: 2)

overflow: Metnin sınırı aştığında ne yapılacağını belirler. TextOverflow.clip, TextOverflow.fade ve TextOverflow.ellipsis değerleri alabilir. Bu özellik opsiyoneldir ve varsayılan olarak TextOverflow.clip olarak ayarlanmıştır.
Örnek: Text('Merhaba Dünya', overflow: TextOverflow.ellipsis)

softWrap: Metnin, sınırı aştığında bir sonraki satıra kaydırılıp kaydırılmayacağını belirler. Bu özellik opsiyoneldir ve varsayılan olarak true olarak ayarlanmıştır.
Örnek: Text('Merhaba Dünya', softWrap: false)

textScaleFactor: Metnin boyutunu, varsayılan boyutun kaç katı olarak ayarlayacağını belirler. Bu özellik opsiyoneldir ve varsayılan olarak 1.0 olarak ayarlanmıştır.
Örnek: Text('Merhaba Dünya', textScaleFactor: 1.5)

Bu özellikler, Text widget'ının en sık kullanılan özellikleridir. Text widget'ı ile ilgili daha fazla özellik için Flutter'ın resmi dokümantasyonunu inceleyebilirsiniz.