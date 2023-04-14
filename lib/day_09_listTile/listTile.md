Flutter'da, ListTile bileşeni, bir liste öğesi oluşturmak için kullanılır. Bu bileşen, genellikle ListView bileşeni içinde kullanılır. ListTile bileşeni, bir başlık, bir alt başlık ve bir simge içerebilir.

Aşağıdaki örnek kod, ListTile bileşenini kullanarak bir liste öğesi oluşturur:

ListTile(
  leading: Icon(Icons.person),
  title: Text('Kullanıcı Adı'),
  subtitle: Text('kullanici@ornek.com'),
  trailing: Icon(Icons.arrow_forward),
  onTap: () {
    // Liste öğesi tıklandığında yapılacak işlem
  },
)

Yukarıdaki örnekte, ListTile bileşeni oluşturulur. leading özelliği, sol tarafta görüntülenen simgeyi belirler. Bu örnekte, Icons.person simgesi kullanılmıştır. title özelliği, liste öğesinin başlığını belirler. Bu örnekte, "Kullanıcı Adı" olarak belirlenmiştir. subtitle özelliği, liste öğesinin alt başlığını belirler. Bu örnekte, "kullanici@ornek.com" olarak belirlenmiştir. trailing özelliği, sağ tarafta görüntülenen simgeyi belirler. Bu örnekte, Icons.arrow_forward simgesi kullanılmıştır. onTap özelliği, liste öğesi tıklandığında yapılacak işlemi belirler.

ListTile bileşeni, birçok özelliğe sahiptir. Örneğin, selected özelliği, liste öğesinin seçili olup olmadığını belirler. dense özelliği, liste öğesinin daha yoğun bir görünüme sahip olmasını sağlar. enabled özelliği, liste öğesinin etkin olup olmadığını belirler.

