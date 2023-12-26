import 'package:flutter/material.dart';
import 'package:flutter_project_app/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Container(
        margin: context.isPhone
            ? EdgeInsets.all(Get.width * 0.1)
            : EdgeInsets.all(Get.height * 0.1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
        ),
        child: Row(children: [
          //AppBar sebelah kiri (BIRU)
          !context.isPhone
              ? Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                      color: Colors.blue,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Welcome',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 70,
                              ),
                            ),
                            Text(
                              'Please sign in',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
                            Text(
                              'Ngopi',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ]),
                    ),
                  ),
                )
              : const SizedBox(),
          Expanded(
            //AppBar sebelah kanan (PUTIH)
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    context.isPhone
                        ? const Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Text(
                                  'Welcome',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 40,
                                  ),
                                ),
                                Text(
                                  'Please sign in',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  'Ngopi',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                ),
                              ])
                        : const SizedBox(),
                        //image.asset = Menampilkan/memberikan gambar untuk di tampilkan ke aplikasi
                    Image.asset(
                      'assets/images/login.png',
                      height: Get.height * 0.5,
                    ),
                    //FloatingActionButton = ketika klik 'Sign In With Google' akan mengarahkan ke 'HOME'
                    FloatingActionButton.extended(
                      onPressed: () => Get.toNamed(Routes.HOME),
                      label: const Text('Sign In With Google'),
                      icon: const Icon(
                        Icons.login_outlined,
                        color: Colors.white,
                      ),
                    )
                  ]),
            ),
          )
        ]),
      ),
    );
  }
}
