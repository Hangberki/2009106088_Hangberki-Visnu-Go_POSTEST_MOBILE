import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest6_2009106088_hangberkivisnugo/getx_controller/text_controller.dart';

class FormPage extends StatelessWidget {
  final GetxTextController tc = Get.put(GetxTextController());

  @override
  Widget build(BuildContext context) {
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          width: mediaQueryWidth,
          height: mediaQueryHeight,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Color.fromARGB(255, 87, 87, 87)])),
          child: ListView(
            children: [
              SizedBox(
                height: 90,
              ),
              Text(
                "FORM DATA DIRI",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 38,
                    fontFamily: "baskvi"),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 19, horizontal: 19),
                width: mediaQueryWidth,
                child: Column(
                  children: [
                    Container(
                      width: mediaQueryWidth,
                      child: Text(
                        "Nama Lengkap",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 24,
                            fontFamily: "baskvi"),
                      ),
                    ),
                    TextField(
                      controller: tc.namaController,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(),
                        hintText: "Nama Lengkap",
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      width: mediaQueryWidth,
                      child: Text(
                        "Alamat",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 24,
                            fontFamily: "baskvi"),
                      ),
                    ),
                    TextFormField(
                      controller: tc.alamatController,
                      maxLines: 4,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(),
                        hintText: "Alamat",
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      width: mediaQueryWidth,
                      child: Text(
                        "Nomor HP",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 24,
                            fontFamily: "baskvi"),
                      ),
                    ),
                    TextField(
                      controller: tc.noHPController,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(),
                        hintText: "Nomor HP",
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        tc.nama.value = tc.namaController.text;
                        tc.alamat.value = tc.alamatController.text;
                        tc.noHP.value = tc.noHPController.text;
                        final snackBar = SnackBar(content: Text("Submitted"));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: Text("Submit"),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      width: mediaQueryWidth,
                      child: Obx(
                        () => Text(
                          "Nama Lengkap :\n ${tc.nama.value} \n"
                          "Alamat:\n ${tc.alamat.value} \n"
                          "No HP:\n ${tc.noHP.value}",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 24,
                              fontFamily: "baskvi"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
