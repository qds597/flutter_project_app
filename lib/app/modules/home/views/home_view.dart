import 'package:flutter/material.dart';
import 'package:flutter_project_app/app/utils/style/AppColors.dart';
import 'package:flutter_project_app/app/utils/widget/header.dart';
import 'package:flutter_project_app/app/utils/widget/sitebar.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  // GlobalKey = Membuat kata kunci untuk keseluruhan yang ada di dalam '_draweKey'
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

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
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  'Management task add friends with you',
                                  style: TextStyle(fontSize: 14),
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
                              child: Column(
                                children: [
                                  const Text(
                                    'My Task',
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontSize: 30,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  //Tampilan 'My Task'
                                  SizedBox(
                                    height: 200,
                                    child: ListView(
                                      clipBehavior: Clip.antiAlias,
                                      scrollDirection: Axis.horizontal,
                                      shrinkWrap: true,
                                      children: [
                                        Container(
                                          width: 400,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: AppColors.cardBg,
                                          ),
                                          margin: const EdgeInsets.all(10),
                                          padding: const EdgeInsets.all(20),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                      child: const CircleAvatar(
                                                        backgroundColor:
                                                            Colors.amber,
                                                        radius: 20,
                                                        foregroundImage:
                                                            NetworkImage(
                                                                'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/07/31/Gear-5-Monkey-D-Luffy-628105818.jpg'),
                                                      ),
                                                    ),
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                      child: const CircleAvatar(
                                                        backgroundColor:
                                                            Colors.amber,
                                                        radius: 20,
                                                        foregroundImage:
                                                            NetworkImage(
                                                                'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/07/31/Gear-5-Monkey-D-Luffy-628105818.jpg'),
                                                      ),
                                                    ),
                                                    //Membuat spasi di dalam tampilan 'Colomn dan Row'
                                                    const Spacer(),
                                                    Container(
                                                      height: 25,
                                                      width: 80,
                                                      color:
                                                          AppColors.primaryBg,
                                                      child: const Center(
                                                          child: Text(
                                                        '100%',
                                                        style: TextStyle(
                                                          color: AppColors
                                                              .primaryText,
                                                        ),
                                                      )),
                                                    ),
                                                  ],
                                                ),
                                                const Spacer(),
                                                Container(
                                                  height: 25,
                                                  width: 80,
                                                  color: AppColors.primaryBg,
                                                  child: const Center(
                                                    child: Text(
                                                      '10 / 10 Task',
                                                      style: TextStyle(
                                                        color: AppColors
                                                            .primaryText,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const Text(
                                                  'Pemerograman Mobile',
                                                  style: TextStyle(
                                                    color:
                                                        AppColors.primaryText,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                                const Text(
                                                  'Deadline 2 hari Lagi',
                                                  style: TextStyle(
                                                    color:
                                                        AppColors.primaryText,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ]),
                                        ),
                                        Container(
                                          width: 400,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: AppColors.cardBg,
                                          ),
                                          margin: const EdgeInsets.all(10),
                                          padding: const EdgeInsets.all(20),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                      child: const CircleAvatar(
                                                        backgroundColor:
                                                            Colors.amber,
                                                        radius: 20,
                                                        foregroundImage:
                                                            NetworkImage(
                                                                'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/07/31/Gear-5-Monkey-D-Luffy-628105818.jpg'),
                                                      ),
                                                    ),
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                      child: const CircleAvatar(
                                                        backgroundColor:
                                                            Colors.amber,
                                                        radius: 20,
                                                        foregroundImage:
                                                            NetworkImage(
                                                                'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/07/31/Gear-5-Monkey-D-Luffy-628105818.jpg'),
                                                      ),
                                                    ),
                                                    //Membuat spasi di dalam tampilan 'Colomn dan Row'
                                                    const Spacer(),
                                                    Container(
                                                      height: 25,
                                                      width: 80,
                                                      color:
                                                          AppColors.primaryBg,
                                                      child: const Center(
                                                          child: Text(
                                                        '100%',
                                                        style: TextStyle(
                                                          color: AppColors
                                                              .primaryText,
                                                        ),
                                                      )),
                                                    ),
                                                  ],
                                                ),
                                                const Spacer(),
                                                Container(
                                                  height: 25,
                                                  width: 80,
                                                  color: AppColors.primaryBg,
                                                  child: const Center(
                                                      child: Text(
                                                    '10 / 10 Task',
                                                    style: TextStyle(
                                                      color:
                                                          AppColors.primaryText,
                                                    ),
                                                  )),
                                                ),
                                                const Text(
                                                  'Pemerograman Mobile',
                                                  style: TextStyle(
                                                    color:
                                                        AppColors.primaryText,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                                const Text(
                                                  'Deadline 2 hari Lagi',
                                                  style: TextStyle(
                                                    color:
                                                        AppColors.primaryText,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ]),
                                        ),
                                        Container(
                                          width: 400,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: AppColors.cardBg,
                                          ),
                                          margin: const EdgeInsets.all(10),
                                          padding: const EdgeInsets.all(20),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                      child: const CircleAvatar(
                                                        backgroundColor:
                                                            Colors.amber,
                                                        radius: 20,
                                                        foregroundImage:
                                                            NetworkImage(
                                                                'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/07/31/Gear-5-Monkey-D-Luffy-628105818.jpg'),
                                                      ),
                                                    ),
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                      child: const CircleAvatar(
                                                        backgroundColor:
                                                            Colors.amber,
                                                        radius: 20,
                                                        foregroundImage:
                                                            NetworkImage(
                                                                'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/07/31/Gear-5-Monkey-D-Luffy-628105818.jpg'),
                                                      ),
                                                    ),
                                                    //Membuat spasi di dalam tampilan 'Colomn dan Row'
                                                    const Spacer(),
                                                    Container(
                                                      height: 25,
                                                      width: 80,
                                                      color:
                                                          AppColors.primaryBg,
                                                      child: const Center(
                                                          child: Text(
                                                        '100%',
                                                        style: TextStyle(
                                                          color: AppColors
                                                              .primaryText,
                                                        ),
                                                      )),
                                                    ),
                                                  ],
                                                ),
                                                const Spacer(),
                                                Container(
                                                  height: 25,
                                                  width: 80,
                                                  color: AppColors.primaryBg,
                                                  child: const Center(
                                                      child: Text(
                                                    '10 / 10 Task',
                                                    style: TextStyle(
                                                      color:
                                                          AppColors.primaryText,
                                                    ),
                                                  )),
                                                ),
                                                const Text(
                                                  'Pemerograman Mobile',
                                                  style: TextStyle(
                                                    color:
                                                        AppColors.primaryText,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                                const Text(
                                                  'Deadline 2 hari Lagi',
                                                  style: TextStyle(
                                                    color:
                                                        AppColors.primaryText,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ]),
                                        ),
                                        Container(
                                          width: 400,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: AppColors.cardBg,
                                          ),
                                          margin: const EdgeInsets.all(10),
                                          padding: const EdgeInsets.all(20),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                      child: const CircleAvatar(
                                                        backgroundColor:
                                                            Colors.amber,
                                                        radius: 20,
                                                        foregroundImage:
                                                            NetworkImage(
                                                                'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/07/31/Gear-5-Monkey-D-Luffy-628105818.jpg'),
                                                      ),
                                                    ),
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                      child: const CircleAvatar(
                                                        backgroundColor:
                                                            Colors.amber,
                                                        radius: 20,
                                                        foregroundImage:
                                                            NetworkImage(
                                                                'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/07/31/Gear-5-Monkey-D-Luffy-628105818.jpg'),
                                                      ),
                                                    ),
                                                    //Membuat spasi di dalam tampilan 'Colomn dan Row'
                                                    const Spacer(),
                                                    Container(
                                                      height: 25,
                                                      width: 80,
                                                      color:
                                                          AppColors.primaryBg,
                                                      child: const Center(
                                                        child: Text(
                                                          '100%',
                                                          style: TextStyle(
                                                            color: AppColors
                                                                .primaryText,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const Spacer(),
                                                Container(
                                                  height: 25,
                                                  width: 80,
                                                  color: AppColors.primaryBg,
                                                  child: const Center(
                                                    child: Text(
                                                      '10 / 10 Task',
                                                      style: TextStyle(
                                                        color: AppColors
                                                            .primaryText,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const Text(
                                                  'Pemerograman Mobile',
                                                  style: TextStyle(
                                                    color:
                                                        AppColors.primaryText,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                                const Text(
                                                  'Deadline 2 hari Lagi',
                                                  style: TextStyle(
                                                    color:
                                                        AppColors.primaryText,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: SafeArea(
                                      child: SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Uplouncing Task',
                                              style: TextStyle(
                                                color: AppColors.primaryText,
                                                fontSize: 30,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            SizedBox(
                                              height: 400,
                                              child: ListView(
                                                clipBehavior: Clip.antiAlias,
                                                //scrollDirection: Axis.vertical,
                                                shrinkWrap: true,
                                                children: [
                                                  Container(
                                                    width: 400,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: AppColors.cardBg,
                                                    ),
                                                    margin:
                                                        const EdgeInsets.all(
                                                            10),
                                                    padding:
                                                        const EdgeInsets.all(
                                                            20),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            25),
                                                                child:
                                                                    const CircleAvatar(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .amber,
                                                                  radius: 20,
                                                                  foregroundImage:
                                                                      NetworkImage(
                                                                          'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/07/31/Gear-5-Monkey-D-Luffy-628105818.jpg'),
                                                                ),
                                                              ),
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            25),
                                                                child:
                                                                    const CircleAvatar(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .amber,
                                                                  radius: 20,
                                                                  foregroundImage:
                                                                      NetworkImage(
                                                                          'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/07/31/Gear-5-Monkey-D-Luffy-628105818.jpg'),
                                                                ),
                                                              ),
                                                              //Membuat spasi di dalam tampilan 'Colomn dan Row'
                                                              const Spacer(),
                                                              Container(
                                                                height: 25,
                                                                width: 80,
                                                                color: AppColors
                                                                    .primaryBg,
                                                                child:
                                                                    const Center(
                                                                        child:
                                                                            Text(
                                                                  '100%',
                                                                  style:
                                                                      TextStyle(
                                                                    color: AppColors
                                                                        .primaryText,
                                                                  ),
                                                                )),
                                                              ),
                                                            ],
                                                          ),
                                                          const Spacer(),
                                                          Container(
                                                            height: 25,
                                                            width: 80,
                                                            color: AppColors
                                                                .primaryBg,
                                                            child: const Center(
                                                                child: Text(
                                                              '10 / 10 Task',
                                                              style: TextStyle(
                                                                color: AppColors
                                                                    .primaryText,
                                                              ),
                                                            )),
                                                          ),
                                                          const Text(
                                                            'Pemerograman Mobile',
                                                            style: TextStyle(
                                                              color: AppColors
                                                                  .primaryText,
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                          const Text(
                                                            'Deadline 2 hari Lagi',
                                                            style: TextStyle(
                                                              color: AppColors
                                                                  .primaryText,
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ]),
                                                  ),
                                                  Container(
                                                    width: 400,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: AppColors.cardBg,
                                                    ),
                                                    margin:
                                                        const EdgeInsets.all(
                                                            10),
                                                    padding:
                                                        const EdgeInsets.all(
                                                            20),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            25),
                                                                child:
                                                                    const CircleAvatar(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .amber,
                                                                  radius: 20,
                                                                  foregroundImage:
                                                                      NetworkImage(
                                                                          'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/07/31/Gear-5-Monkey-D-Luffy-628105818.jpg'),
                                                                ),
                                                              ),
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            25),
                                                                child:
                                                                    const CircleAvatar(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .amber,
                                                                  radius: 20,
                                                                  foregroundImage:
                                                                      NetworkImage(
                                                                          'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/07/31/Gear-5-Monkey-D-Luffy-628105818.jpg'),
                                                                ),
                                                              ),
                                                              //Membuat spasi di dalam tampilan 'Colomn dan Row'
                                                              const Spacer(),
                                                              Container(
                                                                height: 25,
                                                                width: 80,
                                                                color: AppColors
                                                                    .primaryBg,
                                                                child:
                                                                    const Center(
                                                                        child:
                                                                            Text(
                                                                  '100%',
                                                                  style:
                                                                      TextStyle(
                                                                    color: AppColors
                                                                        .primaryText,
                                                                  ),
                                                                )),
                                                              ),
                                                            ],
                                                          ),
                                                          const Spacer(),
                                                          Container(
                                                            height: 25,
                                                            width: 80,
                                                            color: AppColors
                                                                .primaryBg,
                                                            child: const Center(
                                                                child: Text(
                                                              '10 / 10 Task',
                                                              style: TextStyle(
                                                                color: AppColors
                                                                    .primaryText,
                                                              ),
                                                            )),
                                                          ),
                                                          const Text(
                                                            'Pemerograman Mobile',
                                                            style: TextStyle(
                                                              color: AppColors
                                                                  .primaryText,
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                          const Text(
                                                            'Deadline 2 hari Lagi',
                                                            style: TextStyle(
                                                              color: AppColors
                                                                  .primaryText,
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ]),
                                                  ),
                                                  Container(
                                                    width: 400,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: AppColors.cardBg,
                                                    ),
                                                    margin:
                                                        const EdgeInsets.all(
                                                            10),
                                                    padding:
                                                        const EdgeInsets.all(
                                                            20),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            25),
                                                                child:
                                                                    const CircleAvatar(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .amber,
                                                                  radius: 20,
                                                                  foregroundImage:
                                                                      NetworkImage(
                                                                          'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/07/31/Gear-5-Monkey-D-Luffy-628105818.jpg'),
                                                                ),
                                                              ),
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            25),
                                                                child:
                                                                    const CircleAvatar(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .amber,
                                                                  radius: 20,
                                                                  foregroundImage:
                                                                      NetworkImage(
                                                                          'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/07/31/Gear-5-Monkey-D-Luffy-628105818.jpg'),
                                                                ),
                                                              ),
                                                              //Membuat spasi di dalam tampilan 'Colomn dan Row'
                                                              const Spacer(),
                                                              Container(
                                                                height: 25,
                                                                width: 80,
                                                                color: AppColors
                                                                    .primaryBg,
                                                                child:
                                                                    const Center(
                                                                  child: Text(
                                                                    '100%',
                                                                    style:
                                                                        TextStyle(
                                                                      color: AppColors
                                                                          .primaryText,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          const Spacer(),
                                                          Container(
                                                            height: 25,
                                                            width: 80,
                                                            color: AppColors
                                                                .primaryBg,
                                                            child: const Center(
                                                              child: Text(
                                                                '10 / 10 Task',
                                                                style:
                                                                    TextStyle(
                                                                  color: AppColors
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          const Text(
                                                            'Pemerograman Mobile',
                                                            style: TextStyle(
                                                              color: AppColors
                                                                  .primaryText,
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                          const Text(
                                                            'Deadline 2 hari Lagi',
                                                            style: TextStyle(
                                                              color: AppColors
                                                                  .primaryText,
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ]),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Expanded(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'My Friends',
                                              style: TextStyle(
                                                color: AppColors.primaryText,
                                                fontSize: 30,
                                              ),
                                            ),
                                            Text(
                                              'More',
                                              style: TextStyle(
                                                color: AppColors.primaryText,
                                                fontSize: 30,
                                              ),
                                            ),
                                            Icon(
                                              Icons.forward,
                                              color: AppColors.primaryText,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
