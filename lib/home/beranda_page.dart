import 'package:choco_late/home/layout.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Beranda(),
      debugShowCheckedModeBanner: false,
    );
  }
}

@override
class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('Choco app'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline_rounded),
            tooltip: 'Tentang choco apps',
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Layout()));
            },
          ),
        ],
      ),
      // ignore: sized_box_for_whitespace
      body: Container(
        width: double.infinity,
        child: Column(children: <Widget>[
          const SizedBox(
            height: 15,
          ),
          Image.asset(
            "assets/Chocolate.png",
            height: 150,
          ),
          const Text(
            "Chocolatey",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.home,
                  size: 50,
                ),
                Icon(
                  Icons.games,
                  size: 50,
                ),
                Icon(
                  Icons.list,
                  size: 50,
                ),
                Icon(
                  Icons.settings,
                  size: 50,
                ),
              ])
        ]),
      ),
    );
  }
}
