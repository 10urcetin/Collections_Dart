//1- Sehirleri tutan bir liste olusturun, 4 tane il ekleyip sırasıyla ekrana yazdırın.
 //2- Keyleri string, değerleri dynamic olan bir map olusturun. Bu map yapısında bilgisayarınızın işlemci çekirdek sayısını, ram miktarını ve ssd olup olmadıgı bilgisini tutun ve ekrana yazdırın.
 /*3- Her bir elemanında  keyleri string,  value'leri dynamic  olan bir liste olusturun.
Bu listedeki her bir eleman il adını, ilçe sayısını, plaka kodunu tutsun.
Sonrasında da bu listeyi okunaklı bir şekilde yazdırın
Örnek listenin 1. elemanında bulunan il ankara, plaka kodu:06, ilçe sayısı:10(değerler rastgele olabilir).*/
/*4- 5 elemanlı iki farklı liste olusturun. Elemanlar 0-50'ye rastgele şekilde olusturulsun
Bu elemanları tek bir listeye aktarın
Olusan son listenin elemanlarının karelerini tutan set yapısı olusturup ekrana yazdırın.*/
/*5- Kullanıcıdan aldıgınız integer pozitif sayıları bir listede tutun, kullanıcı -1 değerini
girdiğinde girilen sayıların ortalamasını ekrana yazdırın.
*/
import 'dart:io';
import 'dart:math';


void main(List<String> args) {

  //CEVAP 1
  List<String> sehirler=List.filled(4, "");
  sehirler[0]="Ankara";
  sehirler[1]="İstanbul";
  sehirler[2]="İzmir";
  sehirler[3]="Antalya";

  for(int i=0;i<sehirler.length;i++){
    print(sehirler[i]);
  }

  //CEVAP2
  Map<String,dynamic> pc={};
    pc["cekirdek_sayısı"]=16;
    pc["ram_miktarı"]=20;
    pc["ssd_varMı"]=true;

    for(var s1 in pc.entries){
      print(s1);
    }

    //CEVAP3
    List<Map<String,dynamic>> iller=<Map<String,dynamic>>[];
    Map<String,dynamic> eklenecekSehir1=Map();
    eklenecekSehir1["il adı :"]="Ankara";
    eklenecekSehir1["ilçe sayısı :"]=22;
    eklenecekSehir1["plaka :"]=06;
    Map<String,dynamic> eklenecekSehir2=Map();
    eklenecekSehir2["il adı :"]="İstanbul";
    eklenecekSehir2["ilçe sayısı :"]=25;
    eklenecekSehir2["plaka :"]=34;
    Map<String,dynamic> eklenecekSehir3=Map();
    eklenecekSehir3["il adı :"]="İzmir";
    eklenecekSehir3["ilçe sayısı :"]=16;
    eklenecekSehir3["plaka :"]=35;

    iller.add(eklenecekSehir1);
    iller.add(eklenecekSehir2);
    iller.add(eklenecekSehir3);
    iller.add({
      "il adı":"Antalya",
      "ilçe sayısı":11,
      "plaka ":07
    });
    for (int i = 0; i < iller.length; i++) {
    var s1 = iller[i];
    print(
        "Listenin ${i + 1}. elemanında bulunan sehir adı: ${s1['il adı']} ilçe sayısı : ${s1['ilce_sayisi']} plaka  ${s1['plaka']} ");
  }

  //CEVAP4
  List<int> sayilar=List.filled(5, 0);
  List<int> sayilar2=List.filled(5, 0);
  List<int> sonliste=<int>[];
  Set<int> sonset=Set();
  for(int i=0; i<5; i++){
    sayilar[i]=Random().nextInt(50);
    sayilar2[i]=Random().nextInt(50);
  
  }
  sonliste=[...sayilar,...sayilar2];
  print(sonliste);

  for(int gecici in sonliste){
    sonset.add(gecici*gecici);
  }
  print(sonset);

  //CEVAP 5
  int girilenNot = 0;
  List<int> girilenNotlar = <int>[];
  //List<int> girilenNotlar2 = List.empty(growable: true);
  do {
    print("Lütfen notunuzu giriniz , çıkış için -1");
    girilenNot = int.parse(stdin.readLineSync()!);
    if (girilenNot != -1) {
      girilenNotlar.add(girilenNot);
    }
  } while (girilenNot != -1);

  print("Kaç tane not girildi ${girilenNotlar.length}");
  double ortalama = listeninOrtalamasiniBul(girilenNotlar);
  print("Notların ortalaması $ortalama");
}

double listeninOrtalamasiniBul(List<int> liste) {
  int toplam = 0;
  for (int i = 0; i < liste.length; i++) {
    toplam = toplam + liste[i];
  }

  return toplam / liste.length;



  
    
    }
    