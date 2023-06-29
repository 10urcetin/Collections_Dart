/**
 * Dinamik olarak büyüyen küçülen koleksiyonlarımız varsa sabit uzunluklu listeler yerine
 * buyuyen listeleri kullanırız. Bu listelere varsayılan olarak boyut vermemiz gerekmez.
 * Tanımlanması sabit uzunluklu dizilere benzer sadece burada listenin boyutunu belirtmeyiz.
 * add eleman ekler, 
 * clear tüm elemanları siler, 
 * remove verilen elemanı siler,
 * removeAt belirtilen indextekielemanı siler
 * Ayrıca [] kullanarak belli bir indexteki elemanı güncelleyebilirz.
 */
void main(List<String> args) {
  List<int> sayilar=[];
  sayilar.add(1);
  sayilar.add(9);
  sayilar.add(8);
  sayilar.add(2);
  print(sayilar);

  List<int> sayilar2=[1,4,2,4,5];
  print(sayilar2);
  sayilar2.add(52);
  print(sayilar2);

  List<int> sayilar3=List.filled(10,10 ,growable: true);
  sayilar3.add(99);
  print(sayilar3);

  List<int> sayilar4=List.empty(growable: true);
  List<int> sayilar5=[];
  //İkisi de boş array oluşturur.Sonrasında ekleme olacaksa biz ekleriz add ile.

  
}