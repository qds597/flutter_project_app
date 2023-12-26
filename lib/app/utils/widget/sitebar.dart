import 'package:flutter/material.dart';
import 'package:flutter_project_app/app/routes/app_pages.dart';
import 'package:flutter_project_app/app/utils/style/AppColors.dart';
import 'package:get/get.dart';

class SiteBar extends StatelessWidget {
  const SiteBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        height: Get.height,
        color: AppColors.primaryBg,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Memberikan Logo aplikasi yang ingin di buat
              Container(
                height: 100,
                padding: const EdgeInsets.only(top: 20),
                width: double.infinity,
                alignment: Alignment.topCenter,
                child: const Image(
                  image: AssetImage('assets/icons/icon.png'),
                ),
              ),
              //SizedBox = Membuat spasce atau jarak pada icon
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 100,
                child: Center(
                  child: InkWell(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 100,
                          decoration: Get.currentRoute == '/home'
                              ? BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.white,
                                )
                              : const BoxDecoration(),
                          child: Icon(
                            Get.currentRoute == '/home'
                                ? Icons.desktop_mac_sharp
                                : Icons.desktop_windows_outlined,
                                //AppColors = merubah keseluruhan tampilan 'Text' yang berada di "utils = style"
                            color: AppColors.primaryText,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Home',
                          style: TextStyle(
                            //AppColors = merubah keseluruhan tampilan 'Text' yang berada di "utils = style"
                            color: AppColors.primaryText,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    //onTap = Button (tombol klik) untuk ke tampilan 'Home'
                    onTap: () => Get.toNamed(Routes.HOME),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Center(
                  child: InkWell(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 100,
                          decoration: Get.currentRoute == '/task'
                              ? BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.white,
                                )
                              : const BoxDecoration(),
                          child: Icon(
                            Get.currentRoute == '/task'
                                ? Icons.chat_bubble
                                : Icons.chat_outlined,
                                //AppColors = merubah keseluruhan tampilan 'Text' yang berada di "utils = style"
                            color: AppColors.primaryText,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Task',
                          style: TextStyle(
                            //AppColors = merubah keseluruhan tampilan 'Text' yang berada di "utils = style"
                            color: AppColors.primaryText,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    //onTap = Button (tombol klik) untuk ke tampilan 'Task'
                    onTap: () => Get.toNamed(Routes.TASK),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Center(
                  child: InkWell(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 100,
                          decoration: Get.currentRoute == '/friends'
                              ? BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.white,
                                )
                              : const BoxDecoration(),
                          child: Icon(
                            Get.currentRoute == '/friends'
                                ? Icons.how_to_reg
                                : Icons.how_to_reg_outlined,
                            //AppColors = merubah keseluruhan tampilan 'Text' yang berada di "utils = style"
                            color: AppColors.primaryText,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Friends',
                          style: TextStyle(
                            //AppColors = merubah keseluruhan tampilan 'Text' yang berada di "utils = style"
                            color: AppColors.primaryText,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    //onTap = Button (tombol klik) ke tampilan 'Friends'
                    onTap: () => Get.toNamed(Routes.FRIENDS),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Center(
                  child: InkWell(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 100,
                          decoration: Get.currentRoute == '/profile'
                              ? BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.white,
                                )
                              : const BoxDecoration(),
                          child: Icon(
                            Get.currentRoute == '/profile'
                                ? Icons.person
                                : Icons.person_outlined,
                                //AppColors = merubah keseluruhan tampilan 'Text' yang berada di "utils = style"
                            color: AppColors.primaryText,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Profile',
                          style: TextStyle(
                            //AppColors = merubah keseluruhan tampilan 'Text' yang berada di "utils = style"
                            color: AppColors.primaryText,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    //onTap = Button (tombol klik) ke tampilan 'Profile'
                    onTap: () => Get.toNamed(Routes.PROFILE),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
