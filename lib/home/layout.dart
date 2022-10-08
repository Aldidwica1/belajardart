import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Text(
                  'Hellow choco manians ',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        """Berdiri sejak tahun 1999 Choco hoop terus berkembang hingga saat ini 
        dan terus setia menemani choco mania dari sabang sampai merauke 
        Pusatnya makanan dan minuman dengan bahan dasar cokelat yang pastinya tidak murahan dan sangat enak sekali 
        Bukan hanya itu, dengan adanya banyak varian menjadikan produk kita lebih bermutu daripada yang lain 
        Kami melayani :

                            1.Pembelian aneka olahan Cokelat skala besar maupun kecil
                            2.Kunjungan Study Banding olahan kakao
                            3.Diskusi dan pengembangan olahan cokelat berbasis masyarakat
                            4.Pembelian bahan mentah hhasil kebun coklat yang telah difilter dengan kualitas terbaik 
                            5.Wirausaha muda yang ingin belajar dan memahami tentang coklat

        Keunggulan/Pembeda kami :

                            1.Produk kami diolah dari kakao lokal yang dibudidaya masyarakat setempat di Desa Nglanggeran (Produk lain beberapa bahannya Import)
                            2. Produk kami tanpa bahan tambahan pangan (Beberapa produk lain menggunakan tambahan pewarna dan flavoring cokelat)
                            3.Team kami merupakan kolaborasi 3 kelompok masyarakat bergabung diantaranya ada perwakilan dari Kelompok Tani Kumpul Makaryo,
                              Kelompok Kuliner Purba Rasa dan Kelompok Sadar Wisata (POKDARWIS) Nglanggeran. 
                               
        Untuk kontak lebih lanjut hubungi admin dalam kontak 
        serta pengaduan keemail chococs@choco-mail.com""",
        style: TextStyle(fontSize: 20),
        softWrap: true,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: const Text('Tentang choco'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/BanerCoklat.png',
              width: 500,
              height: 335,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
