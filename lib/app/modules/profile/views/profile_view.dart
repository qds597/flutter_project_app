import 'package:flutter/material.dart';
import 'package:flutter_project_app/app/routes/app_pages.dart';
import 'package:flutter_project_app/app/utils/style/AppColors.dart';
import 'package:flutter_project_app/app/utils/widget/header.dart';
import 'package:flutter_project_app/app/utils/widget/myTask.dart';
import 'package:flutter_project_app/app/utils/widget/profileW.dart';
import 'package:flutter_project_app/app/utils/widget/sitebar.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  // GlobalKey = Membuat kata kunci untuk keseluruhan yang ada di dalam '_draweKey'
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SiteBar(),
      //AppColors = merubah keseluruhan tampilan 'background' yang berada di "utils = style -> AppColors"
      backgroundColor: AppColors.primaryBg,
      body: Row(
        children: [
          //Jika tidak sama Phone
          !context.isPhone
              ? const Expanded(
                  flex: 2,
                  child: SiteBar(),
                )
              : const SizedBox(),
          Expanded(
            flex: 15,
            child: Column(children: [
              !context.isPhone
                  ? const header()
                  : Container(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              //Jika klik 'home' dengan tampilan phone, akan muncul 'menu' yang berada dalam tampilan 'website'
                              _drawerKey.currentState!.openDrawer();
                            },
                            icon: const Icon(
                              Icons.menu,
                              color: AppColors.primaryText,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Task Management',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                'Management task add friends with you',
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              Get.defaultDialog(
                                title: 'Sign Out',
                                content:
                                    const Text('Are you sure want sign out?'),
                                cancel: ElevatedButton(
                                  onPressed: () => Get.back(),
                                  child: const Text('Cancel'),
                                ),
                                confirm: ElevatedButton(
                                  onPressed: () => Get.toNamed(Routes.LOGIN),
                                  child: const Text('Sign Out'),
                                ),
                              );
                            },
                            child: const Row(
                              children: [
                                Text(
                                  'Sign Out',
                                  style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontSize: 15),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.login_outlined,
                                  color: AppColors.primaryText,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
              //content / isi page /screen
              Expanded(
                child: Container(
                  padding: !context.isPhone
                      ? const EdgeInsets.all(50)
                      : const EdgeInsets.all(20),
                  margin: !context.isPhone
                      ? const EdgeInsets.all(10)
                      : const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: !context.isPhone
                        ? BorderRadius.circular(50)
                        : BorderRadius.circular(30),
                  ),
                  child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProfileW(),
                        Text(
                          'My Task',
                          style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 200,
                          child: MyTask(),
                        ),
                      ]),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
