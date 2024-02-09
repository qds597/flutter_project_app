// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_project_app/app/utils/style/AppColors.dart';

class MyTask extends StatelessWidget {
  const MyTask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        clipBehavior: Clip.antiAlias,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          Container(
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.cardBg,
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  ),
                ),
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
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.cardBg,
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.cardBg,
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.cardBg,
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                      color: AppColors.primaryText,
                    ),
                  ),
                ),
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
    );
  }
}
