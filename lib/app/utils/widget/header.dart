// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_project_app/app/routes/app_pages.dart';
import 'package:get/get.dart';

class header extends StatelessWidget {
  const header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.1,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 40,
          right: 40,
          top: 25,
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              const Spacer(flex: 1),
              Expanded(
                flex: 1,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                        const EdgeInsets.only(left: 40, right: 10),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Colors.blue),
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    hintText: 'Search',
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Icon(
                Icons.notifications,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 20,
              ),
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
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.login_outlined,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}