// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_project_app/app/utils/style/AppColors.dart';
import 'package:get/get.dart';

class ProfileW extends StatelessWidget {
  const ProfileW({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: !context.isPhone
          ? const Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 150,
                      foregroundImage: NetworkImage(
                          'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/07/31/Gear-5-Monkey-D-Luffy-628105818.jpg'),
                    ),
                  ),
                ),
                // SizedBox(
                //   width: 50,
                // ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Monkey D.Luffy',
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        'monkeydluffy@gmail.com',
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          // ignore: prefer_const_constructors
          : Center(
              child: const Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 150,
                      foregroundImage: NetworkImage(
                          'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/07/31/Gear-5-Monkey-D-Luffy-628105818.jpg'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Monkey D.Luffy',
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    'monkeydluffy@gmail.com',
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
