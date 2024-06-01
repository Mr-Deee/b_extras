import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import '../constants/color_constants.dart';
import '../profile/client_profile_page.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({super.key});

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      backgroundColor: Colors.white,
      child: ListView(
        padding: const EdgeInsets.only(top: 20),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 150,
                decoration: const BoxDecoration(
                    //color: Colors.grey,
                    ),
                child: const SizedBox(
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/logo.png"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  child: Column(
                    children: [
                      Text(
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        "Boateng Patrick",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        "kofiktechgh@gmail.com",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 13,
                              color: Colors.black,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(
              thickness: 1,
              height: 20,
            ),
          ),
          const SizedBox(height: 5),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const ProfilePage()),
                  ));
            },
            leading: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(
                  CupertinoIcons.person_alt_circle,
                  color: Colors.white,
                ),
              ),
            ),
            title: const Text(
              "Profile",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
          const SizedBox(height: 5),
          ListTile(
            leading: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(
                  CupertinoIcons.bell,
                  color: Colors.white,
                ),
              ),
            ),
            title: const Text(
              "Notifications",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
          const SizedBox(height: 5),
          ListTile(
            leading: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(
                  Icons.fire_truck_outlined,
                  color: Colors.white,
                ),
              ),
            ),
            title: const Text(
              "My requests",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
          const SizedBox(height: 5),
          ListTile(
            onTap: () {
              // Get.to(() => SchedulePage());
            },
            leading: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(
                  Icons.list_alt,
                  color: Colors.white,
                ),
              ),
            ),
            title: const Text(
              "My schedules",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
          const SizedBox(height: 5),
          ListTile(
            leading: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(
                  CupertinoIcons.location_solid,
                  color: Colors.white,
                ),
              ),
            ),
            title: const Text(
              "Pickup address",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
          const SizedBox(height: 5),
          ListTile(
            onTap: () {
              // Get.to(() => SchedulePage());
            },
            leading: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(
                  Icons.info_outline_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            title: const Text(
              "About",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(
              thickness: 1,
              height: 20,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              showDialog(
                barrierDismissible: true,
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(10.0),
                        bottom: Radius.circular(10),
                      ),
                    ),
                    actions: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 15),
                          const Text(
                            "Confirm logout",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text("Are you sure you want to logout?"),
                          const SizedBox(height: 25),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: MaterialButton(
                                  onPressed: () {
                                    // AuthenticationRepository.instance
                                    //     .logout();
                                  },
                                  color: Colors.green,
                                  child: const Text(
                                    "Logout",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: MaterialButton(
                                  onPressed: () {
                                    //Get.back();
                                  },
                                  color: Colors.red,
                                  child: const Text(
                                    "Cancel",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  );
                },
              );
            },
            leading: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.redAccent.shade100,
              ),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(
                  Icons.logout,
                ),
              ),
            ),
            title: const Text(
              "Log out",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
          const SizedBox(height: 18),
          const Padding(
            padding: EdgeInsets.only(left: 17.0),
            child: Row(
              children: [
                Text(
                  "BorlaGh v1.1",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
