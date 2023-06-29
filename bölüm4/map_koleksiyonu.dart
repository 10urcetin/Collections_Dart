/**
 * Map yapısı da set gibi sırasız bir şekilde elemanları saklayan bir koleksiyon öğesidir.
 * Bu yapıyı listelerden ve setten ayıran özellik ise elemanları key-value olarak saklamasıdır.
 * Herhangi bir veri türü kullanılabilir ama burada önemli olan key değerlerin unique yani eşsiz olması gerekmektedir.
 * 
 * Map yapısını sözlüğe benzetebiliriz. Tıpkı sözlük gibi birbirden farklı elemanları içerir.
 * Sabit uzunlukta değildir, dinamik uzunluğa sahiptir.
 */
void main(List<String> args) {

  Map<String,dynamic> plaka={
    "Ankara" : 06,
    "İstanbul" : 34,
    "Edirne" : 22,
    "İzmir" : 35
  };
  print(plaka);
  for(String anahtarlar in plaka.keys){
    print(anahtarlar);
  } 

  /* Map<String,dynamic> ogrenci={
    "İsim":"Onur",
    "Yaş ": 22,
    "Meslek":"Bilgisayar Mühendisi"
  };

  Map<String,dynamic>deneme=Map();
  Map<String,dynamic>deneme2={};
 */
}