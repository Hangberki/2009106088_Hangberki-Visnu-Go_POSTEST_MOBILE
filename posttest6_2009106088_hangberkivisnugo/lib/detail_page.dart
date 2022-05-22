import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(
      {Key? key,
      required this.gambar,
      required this.nama,
      required this.jenis,
      required this.harga,
      required this.deskripsi})
      : super(key: key);

  final String gambar;
  final String nama;
  final String jenis;
  final String harga;
  final String deskripsi;

  @override
  Widget build(BuildContext context) {
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(nama),
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
            children: [
              AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.asset(
                  gambar,
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              SizedBox(height: 32),
              Text(
                nama,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 48,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),
              Text(
                jenis,
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),
              Text(
                harga,
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 32),
              Text(
                deskripsi,
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
