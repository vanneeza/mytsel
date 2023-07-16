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
        children: [
          const SizedBox(height: 20),
          Container(
            alignment: Alignment.centerLeft,
            height: 150,
            child: Image.asset(
              "assets/img/logo-login-1.png",
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'Silahkan Masukan Nomor Telkomsel Kamu',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            'Nomor Handphone',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          TextField(
            controller: controller.phoneC,
            keyboardType: TextInputType.phone,
            autocorrect: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Contoh: 0812xxxxxxxx",
            ),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Obx(
                () => Checkbox(
                  activeColor: Colors.redAccent,
                  value: controller.checkC.value,
                  onChanged: (value) => controller.checkC.toggle(),
                ),
              ),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    text: 'Saya menyetujui ',
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('syarat');
                          },
                        text: 'Syarat',
                        style: const TextStyle(color: Colors.redAccent),
                      ),
                      const TextSpan(
                        text: ', ',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('ketentuan');
                          },
                        text: 'Ketentuan ',
                        style: const TextStyle(color: Colors.redAccent),
                      ),
                      const TextSpan(
                        text: ' dan ',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('privasi');
                          },
                        text: 'Privasi ',
                        style: const TextStyle(color: Colors.redAccent),
                      ),
                      const TextSpan(
                        text: 'Telkomsel',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 25),
          ElevatedButton(
            onPressed: () => Get.offAllNamed(Routes.HOME),
            child: Text('Masuk'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              fixedSize: Size(0, 20),
            ),
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text('Atau masuk menggunakan'),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                onPressed: () {},
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset("assets/img/facebook-icon.png"),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Facebook',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF747DBC),
                    ),
                  ),
                ]),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                    Size(125, 0),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  side: MaterialStateProperty.all(
                    BorderSide(
                      color: Color(0xFF3B5998),
                    ),
                  ),
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset("assets/img/twitter-icon.png"),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Twitter',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF1DA1F2),
                    ),
                  ),
                ]),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                    Size(125, 0),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  side: MaterialStateProperty.all(
                    BorderSide(
                      color: Color(0xFF1DA1F2),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
