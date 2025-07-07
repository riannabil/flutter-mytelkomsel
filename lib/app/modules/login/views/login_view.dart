import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytsel/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          // padding: EdgeInsets.all(16),
          children: [
            SizedBox(height: 20),

            Container(
              alignment: Alignment.centerLeft,
              height: 150,
              child: Image.asset(
                "assets/logo/logo-login.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 30),

            // TEKS JUDUL
            Text(
              "Silahkan masuk dengan nomor telkomsel kamu",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 30),

            // LABEL NOMOR HP
            Text(
              "Nomor HP",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 10),
            TextField(
              controller: controller.phoneC,
              autocorrect: false,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Cth. 08129011xxxx",
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 14,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            SizedBox(height: 10),

            // CEKLIST SYARAT
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Checkbox(
                    activeColor: Colors.red,
                    value: controller.checkC.value,
                    onChanged: (value) => controller.checkC.toggle(),
                  ),
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: "Saya menyetujui ",
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("Klik syarat");
                            },
                          text: "syarat",
                          style: TextStyle(color: Colors.red),
                        ),
                        TextSpan(
                          text: ",",
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("Klik ketentuan");
                            },
                          text: "ketentuan",
                          style: TextStyle(color: Colors.red),
                        ),
                        TextSpan(
                          text: ", dan ",
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("Klik privasi");
                            },
                          text: "privasi",
                          style: TextStyle(color: Colors.red),
                        ),
                        TextSpan(
                          text: " Telkomsel",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),

            // TOMBOL MASUK
            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.HOME),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFDADDE2), // warna abu terang
                elevation: 0,
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                "MASUK",
                style: TextStyle(
                  color: Color(0xFF747D8C),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),

            Center(child: Text("Atau masuk menggunakan")),
            SizedBox(height: 35),

            // TOMBOL SOSIAL MEDIA
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // FACEBOOK
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(
                        color: Color(0xFF3B5998), // Facebook blue
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset("assets/icons/fb.png", height: 18, width: 18),
                      SizedBox(width: 8),
                      Text(
                        "Facebook",
                        style: TextStyle(
                          color: Color(0xFF3B5998),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 12),

                // TWITTER
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(
                        color: Color(0xFF1DA1F2), // Twitter blue
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        "assets/icons/twitter.png",
                        height: 18,
                        width: 18,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Twitter",
                        style: TextStyle(
                          color: Color(0xFF1DA1F2),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
