/**
 * Bir diğer koleksiyon yapısı da Set yapısıdır.
 * List den en önemli farklı elemanları sıralı olarak tutmaz, bu durumda list lerde oldugu gibi indexleri kullanamayız
 * Bir diğer farkı ise bir elemandan sadece bir tane olur yani her bir eleman birbirinden farklıdır.
 * 
 * index olmadan elemanları kontrol etmek için contains methodu kullanılabilir. onun dışında listelerdeki methodlar set için de geçerlidir.
 * 
 */
void main(List<String> args) {

  Set<String> isimler=Set();
  isimler.add("Onur");
  isimler.add("Onur");
  isimler.add("Çetin");
  isimler.add("Yağmuru");
  isimler.add("Çok ");
  isimler.add("Seviyor");
  //bu elemanlar sıralı saklanmaz

  for(String s1 in isimler){
    print("$s1");
  }
  Set<int> numbers=Set.from([1,2,1,4,56,1,2,4,62,1,1,2,4]);
  for(int s1 in numbers){
    print("$s1");
  }
  //.addAll iki seti birleştirir.
}