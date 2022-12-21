import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/services.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,]);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purpleAccent,
        appBar: AppBar(
            backgroundColor: Colors.purple[700],
            title: Text("Günün Falı", style: TextStyle(fontSize: 30)),
            centerTitle: true),
        body: Falsayfasi(),
      ),
    );
  }
}

class Falsayfasi extends StatefulWidget {
  const Falsayfasi({Key? key}) : super(key: key);

  @override
  State<Falsayfasi> createState() => _FalsayfasiState();
}

class _FalsayfasiState extends State<Falsayfasi> {
  List<String> yanitlar = [
    'TIKLA FALIN GELSİN',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];

  int yanit = 0;

  @override
  void askYanitlari() {
    int yeniYanit = Random().nextInt(5) + 1;
    while (yeniYanit == 0) {
      yeniYanit = Random().nextInt(5) + 1;
    }
    yanit = yeniYanit;
    setState(() {});
  }

  void paraYanitlari() {
    int yeniYanit = Random().nextInt(10) + 1;
    while (yeniYanit <= 5) {
      yeniYanit = Random().nextInt(10) + 1;
    }
    yanit = yeniYanit;
    setState(() {});
  }

  void gunlukTavsiye() {
    int yeniYanit = Random().nextInt(15) + 1;
    while (yeniYanit <= 10) {
      yeniYanit = Random().nextInt(15) + 1;
    }
    yanit = yeniYanit;
    setState(() {});
  }
  void sifirla(){
    yanit=0;
    setState(() {});
  }

  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,]);
    return Center(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset(
            "assets/falci.png",
            width: 148,
            height: 148,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
          child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.white, foregroundColor: Colors.red),
            onPressed: askYanitlari,
            child: ListTile(
              title: Text("AŞK DURUMU",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 20,
                  )),
              leading: Icon(Icons.favorite, color: Colors.red, size: 32),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
          child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.white, foregroundColor: Colors.green),
            onPressed: paraYanitlari,
            child: ListTile(
              title: Text("PARA DURUMU",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  )),
              leading: Icon(Icons.shopping_cart, color: Colors.green, size: 32),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
          child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.white, foregroundColor: Colors.yellow),
            onPressed: gunlukTavsiye,
            child: ListTile(
              title: Text("GÜNLÜK TAVSİYE",
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 20,
                  )),
              leading: Icon(Icons.star, color: Colors.yellow, size: 32),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            yanitlar[yanit],
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 5),
          child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.white, foregroundColor: Colors.teal),
            onPressed: sifirla,
            child: ListTile(
              title: Text("SIFIRLA",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  )),
              leading: Icon(Icons.restart_alt, color: Colors.teal, size: 32),
            ),
          ),
        ),
      ],
    ));
  }
}
