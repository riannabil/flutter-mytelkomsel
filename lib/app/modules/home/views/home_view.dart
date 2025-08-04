import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: RichText(
          text: TextSpan(
            text: "Hai, ",
            style: TextStyle(fontSize: 18),
            children: [
              TextSpan(
                text: "Muhammad",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 20),
              width: 30,
              height: 30,
              child: Image.asset("assets/icons/qr.png", fit: BoxFit.contain),
            ),
          ),
        ],
        backgroundColor: Color(0xFFEC2028),
        elevation: 0,
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: CLipPathClass(),
            child: Container(
              height: 250,
              width: Get.width,
              color: Color(0xFFEC2028),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Column(
                  children: [
                    ClipPath(
                      clipper: ClipInfoClass(),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        height: 252,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFFE52D27), Color(0xFF831217)],
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "082240483662",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Image.asset("assets/logo/logo-simpati.png"),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Sisa Pusa Anda",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // SizedBox(height: ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rp10.000",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFF7B731),
                                  ), // ganti primary dengan backgroundColor
                                  child: Text(
                                    "Isi Pulsa",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(color: Colors.black),
                            SizedBox(height: 10),
                            RichText(
                              text: TextSpan(
                                text: "Berlaku sampai ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                                children: [
                                  TextSpan(
                                    text: "19 April 2025",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Telkomsel POIN",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF7B731),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    "170",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          StatusCard(
                            title: "Internet",
                            data: "12.9",
                            satuan: "GB",
                          ),
                          StatusCard(
                            title: "Telepon",
                            data: "0",
                            satuan: "Min",
                          ),
                          StatusCard(title: "SMS", data: "23", satuan: "SMS"),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                Container(height: 7, color: Colors.grey[300]),
                Expanded(
                  child: Container(
                    // color: Colors.purple,
                    child: Column(
                      children: [
                        // body
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            children: [
                              SizedBox(height: 20),
                              Text(
                                "Kategori Paket",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ItemKategori(
                                    title: "Internet",
                                    icon: "assets/icons/internet.png",
                                  ),
                                  ItemKategori(
                                    title: "Telepon",
                                    icon: "assets/icons/telepon.png",
                                  ),
                                  ItemKategori(
                                    title: "Pesan",
                                    icon: "assets/icons/pesan.png",
                                  ),
                                  ItemKategori(
                                    title: "Roaming",
                                    icon: "assets/icons/internet.png",
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ItemKategori(
                                    title: "Hiburan",
                                    icon: "assets/icons/hiburan.png",
                                  ),
                                  ItemKategori(
                                    title: "Unggulan",
                                    icon: "assets/icons/unggulan.png",
                                  ),
                                  ItemKategori(
                                    title: "Tersimpan",
                                    icon: "assets/icons/simpan.png",
                                  ),
                                  ItemKategori(
                                    title: "Riwayat",
                                    icon: "assets/icons/internet.png",
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Terbaru Dari Telkomsel",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Lihat Semua",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFFEC2028),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    ItemTerbaru(
                                      image: "assets/image/image1.png",
                                    ),
                                    ItemTerbaru(
                                      image: "assets/image/image2.png",
                                    ),
                                    ItemTerbaru(
                                      image: "assets/image/image1.png",
                                    ),
                                    ItemTerbaru(
                                      image: "assets/image/image2.png",
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // navigations
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          height: 100,
                          // color: Colors.amber,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ItemNav(
                                icon: "beranda",
                                status: true,
                                title: "Beranda",
                              ),
                              ItemNav(icon: "jam", status: false, title: "jam"),
                              ItemNav(
                                icon: "bantuan",
                                status: false,
                                title: "Bantuan",
                              ),
                              ItemNav(
                                icon: "mail",
                                status: false,
                                title: "Mail",
                              ),
                              ItemNav(
                                icon: "profile",
                                status: false,
                                title: "Akun saya",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ItemTerbaru extends StatelessWidget {
  ItemTerbaru({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: Get.width * 0.7,
      height: 75,
      child: Image.asset(image, fit: BoxFit.cover),
    );
  }
}

class ItemKategori extends StatelessWidget {
  ItemKategori({Key? key, required this.icon, required this.title})
    : super(key: key);

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 40,
          height: 40,
          // color: Colors.amber,
          child: Image.asset(icon, fit: BoxFit.cover),
        ),
        SizedBox(height: 5),
        Text(title, style: TextStyle(fontSize: 14)),
      ],
    );
  }
}

class ItemNav extends StatelessWidget {
  ItemNav({
    Key? key,
    required this.status,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final bool status;
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 30,
          child: Image.asset(
            (status == true)
                ? "assets/icons/$icon-active.png"
                : "assets/icons/$icon.png",
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: 5),
        Text(
          "Beranda",
          style: TextStyle(
            color: (status == true) ? Color(0xFFEC202B) : Color(0xFF747DBC),
          ),
        ),
      ],
    );
  }
}

class StatusCard extends StatelessWidget {
  StatusCard({
    Key? key,
    required this.title,
    required this.data,
    required this.satuan,
  }) : super(key: key);

  final String title;
  final String data;
  final String satuan;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        width: Get.width * 0.25,
        // height: 70,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 16)),
            RichText(
              text: TextSpan(
                text: data,
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xFFEC2028),
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: " $satuan",
                    style: TextStyle(fontSize: 16, color: Color(0xFF747D8C)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 80, size.height);
    path.lineTo(size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class CLipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 60);

    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 60,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
