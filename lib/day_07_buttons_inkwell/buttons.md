Flutter'da birkaç farklı türde düğme vardır. Bu düğmeler, kullanıcı etkileşimleri için önemli bileşenlerdir. Aşağıda, Flutter'da bulunan düğme türleri ve özellikleri hakkında kısa bir açıklama yer almaktadır:

TextButton: Metin temelli bir düğmedir. Yalnızca metin içerir ve basıldığında kullanıcının belirli bir işlem yapmasını sağlar. Örneğin, bir formu göndermek gibi.

ElevatedButton: Yükseltilmiş bir düğmedir. Genellikle ikincil bir işlem için kullanılır. Örneğin, bir resmi silmek gibi.

OutlinedButton: Sınırlandırılmış bir düğmedir. Temel bir düğmedir ve birincil işlem için kullanılır. Örneğin, bir kaydet düğmesi gibi.

IconButton: İkon temelli bir düğmedir. Genellikle birincil işlemler için kullanılır. Örneğin, bir geri düğmesi gibi.

Flutter'daki düğmeler, kullanıcının etkileşimleri hakkında geri bildirim sağlayan çeşitli özelliklere sahiptir. Örneğin, bir düğme basıldığında, basıldığını göstermek için rengi değişebilir veya şekli değişebilir.

Düğmeler ayrıca onPressed özelliğine sahiptir. Bu özellik, düğmenin basıldığında ne yapacağını belirtir. Örneğin, bir formu göndermek için onPressed özelliği, form verilerini işleyen bir fonksiyona atanan bir işlev çağrısı olabilir.

Aşağıda, örnek bir düğme kodu gösterilmiştir:

ElevatedButton(
  onPressed: () {
    // Düğme basıldığında yapılacak işlemler buraya yazılabilir.
  },
  child: Text('Kaydet'),
)

Yukarıdaki örnekte, ElevatedButton widget'ı oluşturulur. onPressed özelliği belirtilerek, düğme basıldığında yapılacak işlemler belirtilir. child özelliği, düğmenin içeriğini belirtir. Bu örnekte, düğme içeriği "Kaydet" metni olarak belirlenmiştir.