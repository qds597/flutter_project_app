import 'package:flutter/material.dart';
import 'package:flutter_project_app/app/utils/style/AppColors.dart';
import 'package:flutter_project_app/app/utils/widget/header.dart';
import 'package:flutter_project_app/app/utils/widget/myFriends.dart';
import 'package:flutter_project_app/app/utils/widget/myTask.dart';
import 'package:flutter_project_app/app/utils/widget/sitebar.dart';
import 'package:flutter_project_app/app/utils/widget/upcomingTask.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  // GlobalKey = Membuat kata kunci untuk keseluruhan yang ada di dalam '_draweKey'
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SiteBar(),
      //AppColors = merubah keseluruhan tampilan 'background' yang berada di "utils = style -> AppColors"
      backgroundColor: AppColors.primaryBg,
      body: SafeArea(
        child: Row(
          children: [
            //Tidak sama Phone
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
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: AppColors.primaryText),
                                ),
                                Text(
                                  'Management task made easy with friends',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: AppColors.primaryText),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.notifications,
                              color: AppColors.primaryText,
                              size: 30,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: const CircleAvatar(
                                backgroundColor: Colors.amber,
                                radius: 25,
                                foregroundImage: NetworkImage(
                                    'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/07/31/Gear-5-Monkey-D-Luffy-628105818.jpg'),
                              ),
                            )
                          ],
                        ),
                      ),
                //content / isi page / screen
                Expanded(
                  child: Expanded(
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
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: Get.height * 0.3,
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
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
                                  //Tampilan 'My Task'
                                  MyTask(),
                                ],
                              ),
                            ),
                            !context.isPhone
                                ? const Expanded(
                                    child: Row(
                                      children: [
                                        UpcomingTask(),
                                        MyFriends(),
                                      ],
                                    ),
                                  )
                                : const UpcomingTask(),
                          ]),
                    ),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
