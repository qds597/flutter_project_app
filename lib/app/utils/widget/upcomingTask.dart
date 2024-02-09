// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_project_app/app/utils/style/AppColors.dart';

class UpcomingTask extends StatelessWidget {
  const UpcomingTask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Upcoming Task',
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
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.cardBg,
                    ),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                      'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/07/31/Gear-5-Monkey-D-Luffy-628105818.jpg'),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                      'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/07/31/Gear-5-Monkey-D-Luffy-628105818.jpg'),
                                ),
                              ),
                              //Membuat spasi di dalam tampilan 'Colomn dan Row'
                              const Spacer(),
                              Container(
                                height: 25,
                                width: 80,
                                color: AppColors.primaryBg,
                                child: const Center(
                                    child: Text(
                                  '100%',
                                  style: TextStyle(
                                    color: AppColors.primaryText,
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
                                color: AppColors.primaryText,
                              ),
                            )),
                          ),
                          const Text(
                            'Pemerograman Mobile',
                            style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 15,
                            ),
                          ),
                          const Text(
                            'Deadline 2 hari Lagi',
                            style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 15,
                            ),
                          ),
                        ]),
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.cardBg,
                    ),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                      'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/07/31/Gear-5-Monkey-D-Luffy-628105818.jpg'),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                      'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/07/31/Gear-5-Monkey-D-Luffy-628105818.jpg'),
                                ),
                              ),
                              //Membuat spasi di dalam tampilan 'Colomn dan Row'
                              const Spacer(),
                              Container(
                                height: 25,
                                width: 80,
                                color: AppColors.primaryBg,
                                child: const Center(
                                    child: Text(
                                  '100%',
                                  style: TextStyle(
                                    color: AppColors.primaryText,
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
                                color: AppColors.primaryText,
                              ),
                            )),
                          ),
                          const Text(
                            'Pemerograman Mobile',
                            style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 15,
                            ),
                          ),
                          const Text(
                            'Deadline 2 hari Lagi',
                            style: TextStyle(
                              color: AppColors.primaryText,
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
    );
  }
}
