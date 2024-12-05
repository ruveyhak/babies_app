import 'package:flutter/material.dart';

class AySayfasi extends StatelessWidget {
  final String cinsiyet;
  final String ay;

  const AySayfasi({Key? key, required this.cinsiyet, required this.ay}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String ayIcerik = '';


    if (cinsiyet == 'Kız') {
      ayIcerik = _kizAyIcerigi(ay);
    } else if (cinsiyet == 'Erkek') {
      ayIcerik = _erkekAyIcerigi(ay);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('$cinsiyet - $ay'),
        backgroundColor: Colors.cyan.withOpacity(1),
      ),
      backgroundColor: Colors.green[200],
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ayIcerik,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }


  String _kizAyIcerigi(String ay) {
    String ayIcerik = '';


    switch (ay) {
      case '1. Ay':
        ayIcerik = '1 Aylık Bebek Gelişimi\n\n'
            'Bir aylık kız bebeğin boyu, en düşük 50 cm ve en yüksek 59 cm olmalı.'
            '\nKilosu 2950 gr. ila 5400 gr. arasında olması beklenir.\n\n'
            '1 Aylık Bebek Neler Yapar?\n\n'
            'Birinci ayda, bebeklerin yaptıkları birçok hareket doğumla beraber var olan yenidoğan reflekslerinden kaynaklanmaktadır. Avuçlarına herhangi bir şey koyarsanız, onu emer, yutar, süt arar ve bir nesneyi kavrarlar. Çoğu zaman da ellerini yumruk yapıp sıkarlar.\n\n'
            '1 Aylık Bebekle Nasıl Vakit Geçirilir?\n\n'
            'Bu ay bebeğin yakınında duran kişi ile göz teması kurmaya başladığı aydır. Bebeği kucağınıza alın veya yanına uzanın göz teması kurarak konuşun şarkılar söyleyin.';
        break;
      case '2. Ay':
        ayIcerik = '2 Aylık Bebek Gelişimi\n\n'
            'İki aylık kız bebeğin boyunun, ortalama 57 cm., ağırlığının 4750 gr. ve baş çevresinin 38,3 cm olması beklenir.\n\n '
            '2 Aylık Bebek Neler Yapar?\n\n'
            'Bebeğinizi karnının üstüne yatırdığınızda başını 45 derece yukarıya kaldırabilir ve başını yana doğru hareket ettirmeye başlayabilir. Ayrıca kollarını yana doğru açarak uçak gibi hareket edebilir.\n\n '
            '2 Aylık Bebekle Nasıl Vakit Geçirilir?\n\n '
            'Şarkılar söylemek, sakin bir ses tonu ile konuşmak, gülümsemek bu dönemde yapılacak aktivitelerdendir. Bu aktiviteler, çocuk gelişiminde çok önemli bir yeri olan güvenli bağlanmayı da destekler.';
        break;
      case '3. Ay':
        ayIcerik = '3 Aylık Bebek Gelişimi\n\n'
            '3 aylık bir kız bebek ortalama 5,5 kilo olmakta ve boyu yaklaşık 59 cm olmalıdır.\n\n '
            '3 Aylık Bebek Neler Yapar? \n\n '
            'Ellerini açıp kapatabilir, birbirine kenetleyebilir, renkli oyuncaklara doğru uzanabilir. Hala oral dönemde oldukları için nesneleri ağzına götürmeye devam eder. İşitme ve görme duyularının geliştiği üçüncü ayında bebeğiniz artık önceki aylardan daha net görmeyi başarır.\n\n '
            '3 Aylık Bebekle Nasıl Vakit Geçirilir?\n\n '
            'Bu dönemde bebeğiniz dokununca ayağını çekmek ve başını çevirmek gibi kendini koruma refleksleri geliştirmeye başlayabilir. 3 aylık bebekler, kendi kendine konuşmaya, yüksek sesle gülmeye başlayabilir.';
        break;
      case '4. Ay':
        ayIcerik = '4 Aylık Bebek Gelişimi\n\n'
            '4 aylık kız bebeğin boyunun 56 ila 68 cm. uzunluğunda, kilosunun ise 4500 ila 8000 gr. aralığında olması beklenir.\n\n'
            '4 Aylık Bebek Neler Yapar?\n\n'
            'Yüksek sesle kahkaha atabilen bebek, çıkardığı seslerin şiddetini de yükseltebilir. Ardışık sesler çıkarabilen bebek, yüzükoyun pozisyondayken kolları üzerinde vücudunu kaldırabilir. Otururken başını dik tutabilir ve elindeki hemen her şeyi ağzına götürür.\n\n'
            '4 Aylık Bebekle Nasıl Vakit Geçirilir?\n\n'
            'Bu dönemde bebeğin öğrenmeye ve oynamaya teşvik etmek için çeşitli şekil, boyut, renk ve dokulardaki yaşa uygun oyuncaklarla vakit geçirdikleri alanı şekillendirmek gerekir.';
        break;
      case '5. Ay':
        ayIcerik = '5 Aylık Bebek Gelişimi\n\n'
            '5 aylık kız bebeklerin kilosu yaklaşık olarak 6,5 kilo ve boyları da 57 ile 70 cm aralığında değişmektedir.\n\n'
            '5 Aylık Bebek Neler Yapar?\n\n'
            'bazı temel sesleri çıkarmaya başlar, aslında sesleri taklit ederler. İsmi söylendiğinde bakabilir, karın üstü hareketi (tummy time) yapıldığında başını dik tutup, olduğu yerde dönmeye başlayabilirler. Ayaklarını keşfetmeye başlar ve ayak parmaklarını ağzına götürebilirler.\n\n'
            '5 Aylık Bebekle Nasıl Vakit Geçirilir?\n\n'
            'Onu oyun halısına yüz üstü yatırın, ulaşamayacağı mesafelerde farklı yerlere oyuncaklar koyun, bebek onlara ulaşarak almaya çalışsın.';
        break;
      case '6. Ay':
        ayIcerik = '6 Aylık Bebek Gelişimi\n\n'
            'Kız bebeklerde boyu 58 ile 72 cm arasında değişebilir.Kilosu 5.4 kg ile 9.2 kg arasında değişebilir.\n\n '
            '6 Aylık Bebek Neler Yapar?\n\n'
            'Dans etmek ve hafifçe zıplatılmak gibi aktivitelerden çok hoşlanır.yüzükoyun yatar pozisyondayken vücudunu kaldırabilir, başını ve vücudunu istediği yöne döndürebilir.\n\n'
            '6 Aylık Bebekle Nasıl Vakit Geçirilir?\n\n'
            'çıngıraklar, diş kaşıyıcılar, oyun halısı, yumuşak oyuncaklar, kavram kartları gibi oyuncaklar diye cevap verebiliriz.';
        break;
      case '7. Ay':
        ayIcerik = '7 Aylık Bebek Gelişimi\n\n'
            'çıngıraklar, diş kaşıyıcılar, oyun halısı, yumuşak oyuncaklar, kavram kartları gibi oyuncaklar diye cevap verebiliriz.\n\n'
            '7 Aylık Bebek Neler Yapar?\n\n'
            'Düşürdüğü nesneleri arayabilir. Ellerinden tutulduğunda ayakları üzerinde durabilen bebek, ellerini çırpabilir ya da el sallayabilir. Kendisi talep etmeden tanımadığı insanların kucağına verilmekten hoşlanmaz.\n\n'
            '7 Aylık Bebekle Nasıl Vakit Geçirilir?\n\n'
            'Bu dönemde bebeğin öğrenmeye ve oynamaya teşvik etmek için çeşitli şekil, boyut, renk ve dokulardaki yaşa uygun oyuncaklarla vakit geçirdikleri alanı şekillendirmek gerekir. ';
        break;
      case '8. Ay':
        ayIcerik = '8 Aylık Bebek Gelişimi\n\n'
            '8 aylık kız bebek kilosu 6500 ile 10.500 gram arasında ve boyu alt sınır 65 cm, üst sınır 75 cm boyunda oluyor.\n\n'
            '8 Aylık Bebek Neler Yapar?\n\n'
            'Bebekler bu dönemde sesli ve sessiz harfleri birlikte kullanarak, "Baba", "Dada", "Dede" gibi ilk kelimelerini söyleyebilirler. “Güle güle”, “Atta”, “Bay bay” gibi kelimeleri anlar ve tepki gösterebilir. Bu süreçte yapılacak en doğru şey bebekle iletişim kurmaktır. Günlük hayatta ne yapılıyorsa bebekle paylaşılmalıdır.\n\n'
            '8 Aylık Bebekle Nasıl Vakit Geçirilir?\n\n'
            'Taklit oyunları\n'
            'Ce eee (Peekaboo)\n'
            'İç içe geçen kaplar.\n'
            'Ses çıkaran eşyalar ve oyuncaklar.';
        break;
      case '9. Ay':
        ayIcerik = '9 Aylık Bebek Gelişimi\n\n'
            '9 aylık kız bebeklerde boy 70.1 cm civarında ve genelde 6,5-10,5 kilogram civarında bir ağırlığa sahiptir.\n\n'
            '9 Aylık Bebek Neler Yapar?\n\n'
            '9. ay bebeklerin ilgilerinin ve meraklarının arttığı, kaslarını kontrol edebildiği bir dönemdir. Bu dönemde eşyalara tutunarak ayakta durabilir, parmaklarıyla nesneleri kavrayarak taşıyabilirler. Anne ve baba gibi kelimeleri bilinçlice söyleyebilir, karşısındakinin üzüldüğünü ve sevindiğini anlayabilirler.\n\n'
            '9 Aylık Bebekle Nasıl Vakit Geçirilir?\n\n'
            'Toplarla eğlenceli oyunlar oynayabilirsiniz. Bebeğiniz top yuvarlama, topu biraz yukarıdan yakalama gibi oyunları çok eğlenceli bulurlar.';
        break;
      case '10. Ay':
        ayIcerik = '10 Aylık Bebek Gelişimi\n\n'
            'Kız bebekleri yaklaşık 9 kilogram ve yaklaşık 71 cm olurlar.\n\n'
            '10 Aylık Bebek Neler Yapar?\n\n'
            'bebekler emekleyebilir, oturur pozisyondan ayağa kalkabilir, bir yere tutunurken çömelir veya tekrar oturabilir, mobilyalara veya ellerinize tutunarak etrafta gezinebilir. Yürüme eylemi artık birkaç ay sonra tamamen gerçekleşecektir.\n\n '
            '10 Aylık Bebekle Nasıl Vakit Geçirilir?\n\n'
            'Bebeğinizin elinden tutup oyunlar oynayarak onu cesaretlendirebilirsiniz. 10. ayda el - göz koordinasyonunu sağlayın: Bebeğinize renkli ve parlak yani ilgisini çekebilecek oyuncaklar gösterebilirsiniz.';
        break;
      case '11. Ay':
        ayIcerik = '11 Aylık Bebek Gelişimi\n\n'
            'Kız bebekler 11-7.5 kilogram arası ve boyları yaklaşık 73 cm olur.\n\n'
            '11 Aylık Bebek Neler Yapar?\n\n'
            '11 aylık bebek beyin gelişimi döneminde bebeğiniz devamlı kullandığınız “hayır”, “baba”, “anne” gibi bir iki kelimeyi söyleyebilir ve iletişim kurmak için ellerini daha çok kullanabilir.\n\n'
            '11 Aylık Bebekle Nasıl Vakit Geçirilir?\n\n'
            '11 ayda bebeğiniz müzik dinlemekten daha çok hoşlanmaya başlayabilir. 11 aylık bebeğin beyin gelişimi için ona ses çıkaran oyuncaklar alarak keyifli zaman geçirmesini sağlayabilirsiniz.';
        break;
      case '12. Ay':
        ayIcerik = '12 Aylık Bebek Gelişimi\n\n'
            'kız bebeklerin 7200 ila 12000 gr. ağırlığında ve 66 ila 81 cm. uzunluğunda olması beklenir.\n\n'
            '12 Aylık Bebek Neler Yapar?\n\n'
            'Parmaklarla kıskaç hareketi yapma.\n'
             'Nesneleri birbirine vurma.\n'
            'Nesneleri bir kaba koyma ya da kaptan alma.\n'
            'Nesnelerin gözden kaybolmasına izin verme.\n\n'
            '12 Aylık Bebekle Nasıl Vakit Geçirilir?\n\n'
            'Renkli kitaplar, şarkılar ve tekerlemelerle ilgisini çekip dil gelişimini destekleyin; yapbozlar ve oyun hamurlarıyla problem çözme becerilerini ve yaratıcılığını teşvik edin.';
        break;


      default:
        ayIcerik = 'Belirtilen ayın içeriği henüz eklenmemiş.';
    }

    return ayIcerik;
  }


  String _erkekAyIcerigi(String ay) {
    String ayIcerik = '';


    switch (ay) {
      case '1. Ay':
        ayIcerik = '1 Aylık Bebek Gelişimi\n\n'
            '1 Aylık erkek bebeklerin boyu 51 ila 60 cm. aralığında, kilosu ise 3000 gr. ila 5750 gr. arasında olması gerekir.\n\n'
            '1 Aylık Bebek Neler Yapar?\n\n'
            'Avuçlarına herhangi bir şey koyarsanız, onu emer, yutar, süt arar ve bir nesneyi kavrarlar. Çoğu zaman da ellerini yumruk yapıp sıkarlar.\n\n'
            '1 Aylık Bebekle Nasıl Vakit Geçirilir?\n\n'
            'Bu ay bebeğin yakınında duran kişi ile göz teması kurmaya başladığı aydır. Bebeği kucağınıza alın veya yanına uzanın göz teması kurarak onunla konuşun, şarkı söyleyin, oyunlar oynayın, gülümseyin. Seslere duyarlı olan bebek bu ay sırt üstü yatarken başını sağa sola çevirmeye de başlar.';
        break;
      case '2. Ay':
        ayIcerik = '2 Aylık Bebek Gelişimi\n\n'
            '2 aylık erkek bebeklerin boyu ortalama 58,5 cm. ağırlığı 5200 gr. ve baş çevresi 39,1 cm olarak hesaplanır. Tüm bu değerlerin ortalama değerler olduğu unutulmamalıdır.\n\n'
            '2 Aylık Bebek Neler Yapar?\n\n'
            'Nesnelere uzanabilir, onları parmaklarıyla tutabilir. Heyecanlandığında çığlık atabilir, kol ve bacaklarını sallayabilir. Olayların sıralı bir şekilde geliştiğini algılayabilir. Seslere tepki verir ve sesin geldiği tarafa doğru başını ve hatta vücudunu çevirebilir.\n\n'
            '2 Aylık Bebekle Nasıl Vakit Geçirilir?\n\n'
            'Göbek üstü zamanı Bebeğinizin göbeğinin üstünde geçirdiği zaman, sırt ve boyun kaslarını güçlendirecektir. Kitap Okuyun. Şarkı söyleyin.';
        break;
      case '3. Ay':
        ayIcerik = '3 Aylık Bebek Gelişimi\n\n'
            'Erkek bebekler ortalama 6 kilo olmaktadır ve boyu yaklaşık 60 santim olmalıdır.\n\n'
            '3 Aylık Bebek Neler Yapar?\n\n'
            'Bebeğiniz 3 aylık olunca kol ve el kaslarının gelişmesiyle objelere uzanmaya başlayacaktır. Elleri genelde açıktır. Ellerini, parmaklarını inceler, orta hatta birleştirip ağzına götürür.\n\n'
            '3 Aylık Bebekle Nasıl Vakit Geçirilir?\n\n'
            'Şarkılar söylemek, sakin bir ses tonu ile konuşmak, gülümsemek bu dönemde yapılacak aktivitelerdendir. Bu aktiviteler, çocuk gelişiminde çok önemli bir yeri olan güvenli bağlanmayı da destekler.';
        break;
      case '4. Ay':
        ayIcerik = '4 Aylık Bebek Gelişimi\n\n'
            '4 aylık erkek bebeklerin boyu 57 ile 68 cm. Ağırlığı ise 4600 ila 8250gr olmalıdır.\n\n'
            '4 Aylık Bebek Neler Yapar?\n\n'
            'Yüksek sesle kahkaha atabilen bebek, çıkardığı seslerin şiddetini de yükseltebilir.\n\n'
            '4 Aylık Bebekle Nasıl Vakit Geçirilir?\n\n'
            'çeşitli şekil, boyut, renk ve dokulardaki yaşa uygun oyuncaklarla vakit geçirdikleri alanı şekillendirmek gerekir. ';
        break;
      case '5. Ay':
        ayIcerik = '5 Aylık Bebek Gelişimi\n\n'
            'Erkek bebeklerin kiloları 7 kilo iken boyları ise 58 ile 70 cm aralığında değişiklik göstermektedir.\n\n'
            '5 Aylık Bebek Neler Yapar?\n\n'
            '5 aylık bebekler bazı temel sesleri çıkarmaya başlar, aslında sesleri taklit ederler. İsmi söylendiğinde bakabilir, karın üstü hareketi (tummy time) yapıldığında başını dik tutup, olduğu yerde dönmeye başlayabilirler. Ayaklarını keşfetmeye başlar ve ayak parmaklarını ağzına götürebilirler.\n\n'
            '5 Aylık Bebekle Nasıl Vakit Geçirilir?\n\n'
            'Onu oyun halısına yüz üstü yatırın, ulaşamayacağı mesafelerde farklı yerlere oyuncaklar koyun, bebek onlara ulaşarak almaya çalışsın.';
        break;
      case '6. Ay':
        ayIcerik = '6 Aylık Bebek Gelişimi\n\n'
            'Erkek bebekler 5.5kg ile 9.5kg arasında olabilir boyu ise 60 ile 73cm arasında değişebilir.\n\n'
            '6 Aylık Bebek Neler Yapar?\n\n'
            'Destekli bir şekilde yalnız başına oturabilen bebek, dans etmek ve hafifçe zıplatılmak gibi aktivitelerden çok hoşlanır. Emekleme çalışmalarının ilk kez görülebileceği 6 aylık bebek gelişimi döneminde bebek, yüzükoyun yatar pozisyondayken vücudunu kaldırabilir, başını ve vücudunu istediği yöne döndürebilir.\n\n'
            '6 Aylık Bebekle Nasıl Vakit Geçirilir?\n\n'
            'çıngıraklar, diş kaşıyıcılar, oyun halısı, yumuşak oyuncaklar, kavram kartları gibi oyuncaklara bayılırlar.';
        break;
      case '7. Ay':
        ayIcerik = '7 Aylık Bebek Gelişimi\n\n'
            'erkek bebeklerin boyunun 32 ila 75 cm. ağırlığının ise 6000 ila 10200 gr. aralığında olması gerekir.\n\n'
            '7 Aylık Bebek Neler Yapar?\n\n'
            'Düşürdüğü nesneleri arayabilir. Ellerinden tutulduğunda ayakları üzerinde durabilen bebek, ellerini çırpabilir ya da el sallayabilir. Kendisi talep etmeden tanımadığı insanların kucağına verilmekten hoşlanmaz.\n\n'
            '7 Aylık Bebekle Nasıl Vakit Geçirilir?\n\n'
            'çeşitli şekil, boyut, renk ve dokulardaki yaşa uygun oyuncaklarla vakit geçirdikleri alanı şekillendirmek gerekir. ';
        break;
      case '8. Ay':
        ayIcerik = '8 Aylık Bebek Gelişimi\n\n'
            '8 aylık bebeklerin ortalama kiloları 8 kilo 200 gram bandında olduğu görülür. Boy uzunluğu ise genellikle 62-75 santimetre aralığındadır.\n\n'
            '8 Aylık Bebek Neler Yapar?\n\n'
            'Bebekler bu dönemde sesli ve sessiz harfleri birlikte kullanarak, "Baba", "Dada", "Dede" gibi ilk kelimelerini söyleyebilirler. “Güle güle”, “Atta”, “Bay bay” gibi kelimeleri anlar ve tepki gösterebilir. \n\n'
            '8 Aylık Bebekle Nasıl Vakit Geçirilir?\n\n'
            '8 aylık olan bebeğiniz gelişen kaslarıyla kendinden daha emin hareket etmeye başlar. Çok daha uzaktaki nesneler ve oyuncaklar ilgisini çeker.';
        break;
      case '9. Ay':
        ayIcerik = '9 Aylık Bebek Gelişimi\n\n'
            'Erkek bebekler 6,5-11,5 kilogram arası bir ağırlığa sahiptir. boyları 64 cm ila 77,5 cm arasında değişebilir.\n\n'
            '9 Aylık Bebek Neler Yapar?\n\n'
            '9. ay bebeklerin ilgilerinin ve meraklarının arttığı, kaslarını kontrol edebildiği bir dönemdir. Bu dönemde eşyalara tutunarak ayakta durabilir, parmaklarıyla nesneleri kavrayarak taşıyabilirler. Anne ve baba gibi kelimeleri bilinçlice söyleyebilir, karşısındakinin üzüldüğünü ve sevindiğini anlayabilirler.\n\n'
            '9 Aylık Bebekle Nasıl Vakit Geçirilir?\n\n'
            'Toplarla eğlenceli oyunlar oynayabilirsiniz. Bebeğiniz top yuvarlama, topu biraz yukarıdan yakalama gibi oyunları çok eğlenceli bulur';
        break;
      case '10. Ay':
        ayIcerik = '10 Aylık Bebek Gelişimi\n\n'
            'Erkek bebeklerin ise 9.75 kg civarında olması beklenir. Boyu ise 72 cm uzunluğundadır\n\n'
            '10 Aylık Bebek Neler Yapar?\n\n'
            'Bu yaştaki bebekler emekleyebilir, oturur pozisyondan ayağa kalkabilir, bir yere tutunurken çömelir veya tekrar oturabilir, mobilyalara veya ellerinize tutunarak etrafta gezinebilir.\n\n'
            '10 Aylık Bebekle Nasıl Vakit Geçirilir?\n\n'
            'Artık bebeğiniz mobilyalara tutunup yürüme denemeleri yapabilir 😊 Bebeğinizin elinden tutup oyunlar oynayarak onu cesaretlendirebilirsiniz. ';
        break;
      case '11. Ay':
        ayIcerik = '11 Aylık Bebek Gelişimi\n\n'
            'Erkek bebekler de boy ortalama 75 santimdir.kilosu 8 ile 12 kilo arasındadır.\n\n'
            '11 Aylık Bebek Neler Yapar?\n\n'
            '11 aylık bebek beyin gelişimi döneminde bebeğiniz devamlı kullandığınız “hayır”, “baba”, “anne” gibi bir iki kelimeyi söyleyebilir ve iletişim kurmak için ellerini daha çok kullanabilir. \n\n'
            '11 Aylık Bebekle Nasıl Vakit Geçirilir?\n\n'
            '11 ayda bebeğiniz müzik dinlemekten daha çok hoşlanmaya başlayabilir. 11 aylık bebeğin beyin gelişimi için ona ses çıkaran oyuncaklar alarak keyifli zaman geçirmesini sağlayabilirsiniz.';
        break;
      case '12. Ay':
        ayIcerik = '12 Aylık Bebek Gelişimi\n\n'
            '12 aylık erkek bebeklerin, 7450 ila 12500 gr aralığında ve 69 ila 83 cm uzunluğunda olması normal kabul edilir.\n\n'
            '12 Aylık Bebek Neler Yapar?\n\n'
            'Bu dönemde son derece hareketli olan bebek, tırmanma ve yuvarlanma gibi hareketlerden keyif alır. Bu gibi eylemleri yapmasına izin verilmeli ancak olası tehlikeler onun anlayabileceği şekilde anlatılmalı ve bebek sürekli gözlenmelidir.\n\n'
            '12 Aylık Bebekle Nasıl Vakit Geçirilir?\n\n'
            'Onun çabalarını desteklemek, beraber eğlenceli vakit geçirmek, eğitsel aktiviteler ile ona rehberlik etmek minik yavrunuzun gelişimine ve aranızdaki bağın kuvvetlenmesine yardımcı olur. ';
        break;


      default:
        ayIcerik = 'Belirtilen ayın içeriği henüz eklenmemiş.';
    }

    return ayIcerik;
  }
}
