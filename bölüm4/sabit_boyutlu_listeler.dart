
/**
 * List ikiye ayrılır
 *  1-Sabit uzunluklu
 *  2-Büyüyen listeler
 * 
 * Diğer dillerde dizi olarak bilinen yapılar dart dilinde sabit uzunluklu liste olarak kullanılır.
 * List<int> numaralar = List.filled(10, 0); //10 eleman içeren sabit uzunluklu liste yani dizi.
 * Index numaraları 0'dan baslar yani listenin ilk elemanına erişmek için 0. indexine bakılır. numaralar[0] diyerek..
 * 
 */
void main(List<String> args) {

  List<int> notlar=List.filled(3,0,growable: false);//Varsayılan ataması 0
  notlar[0]=40;
  notlar[1]=69;
  notlar[2]=61;
  print(notlar);
  print(notlar.length);

  List<String> isimler=List.filled(3," ");
  List<dynamic> karma=List<dynamic>.filled(4, "");
  karma[0]="ahmet";
  karma[1]=2;
  karma[2]=false;
//Listedeki elemanları gezme
  for(int i=0; i<notlar.length;i++){
    notlar[i]+=5;
    print(notlar[i]);
  }



  
}