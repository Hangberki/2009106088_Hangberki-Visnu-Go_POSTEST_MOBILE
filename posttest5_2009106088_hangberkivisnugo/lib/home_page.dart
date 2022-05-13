import 'package:flutter/material.dart';
import 'package:posttest5_2009106088_hangberkivisnugo/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recommended"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Color.fromARGB(255, 87, 87, 87)],
            ),
          ),
          child: ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DetailPage(
                            gambar: "assets/a1.jpg",
                            nama: "ZX 25R",
                            jenis: "Sport Bike",
                            harga: "Rp 92.000.000 - 120.000.000",
                            deskripsi: "Terlalu mahal, jangan dibeli",
                          ),
                        ),
                      );
                    },
                    child: Card(
                      color: Colors.grey.shade800,
                      child: Container(
                        height: 128,
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Flexible(
                              flex: 2,
                              child: AspectRatio(
                                aspectRatio: 1 / 1,
                                child: Image.asset(
                                  "assets/a1.jpg",
                                  fit: BoxFit.cover,
                                  alignment: Alignment.bottomCenter,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              flex: 3,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "ZX 25R",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                    ),
                                  ),
                                  Text(
                                    "Sport Bike",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    "Rp 92.000.000 - 120.000.000",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DetailPage(
                            gambar: "assets/a2.jpg",
                            nama: "MT 09",
                            jenis: "Naked Bike",
                            harga: "Rp 130.000.000 - 160.000.000",
                            deskripsi: "Merk yamaha, 900cc, 3 cylinder",
                          ),
                        ),
                      );
                    },
                    child: Card(
                      color: Colors.grey.shade800,
                      child: Container(
                        height: 128,
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Flexible(
                              flex: 2,
                              child: AspectRatio(
                                aspectRatio: 1 / 1,
                                child: Image.asset(
                                  "assets/a2.jpg",
                                  fit: BoxFit.cover,
                                  alignment: Alignment.bottomCenter,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              flex: 3,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "MT09",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                    ),
                                  ),
                                  Text(
                                    "Naked Bike",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    "Rp 130.000.000 - 160.000.000",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DetailPage(
                            gambar: "assets/a3.jpg",
                            nama: "ZX 10R",
                            jenis: "Sport Bike",
                            harga: "Rp 250.000.000 - 300.000.000",
                            deskripsi: "Kawasaki, 1000cc, 4 cylinder",
                          ),
                        ),
                      );
                    },
                    child: Card(
                      color: Colors.grey.shade800,
                      child: Container(
                        height: 128,
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Flexible(
                              flex: 2,
                              child: AspectRatio(
                                aspectRatio: 1 / 1,
                                child: Image.asset(
                                  "assets/a3.jpg",
                                  fit: BoxFit.cover,
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              flex: 3,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "ZX 10R",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                    ),
                                  ),
                                  Text(
                                    "Sport Bike",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    "Rp 250.000.000 - 300.000.000",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
