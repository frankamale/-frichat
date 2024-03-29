import 'package:afri_chat/edit_profile/academia.dart';
import 'package:afri_chat/edit_profile/family_info.dart';
import 'package:afri_chat/edit_profile/hobbies.dart';
import 'package:afri_chat/edit_profile/personal_data.dart';
import 'package:afri_chat/edit_profile/workplace_info.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                    height: 130,
                    child: Image.asset('lib/assets/profile_holder.png')),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Edit',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.purple[900],
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.purple[900],
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PersonalData()));
                    },
                    child: Text(
                      'Personal data',
                      style: TextStyle(fontSize: 20, color: Colors.purple[900]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Moment Flow',
                        style:
                        TextStyle(fontSize: 20, color: Colors.purple[900]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WorkplaceIfo()));
                      },
                      child: Text(
                        'Workplace Info',
                        style:
                        TextStyle(fontSize: 20, color: Colors.purple[900]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Academia()));
                      },
                      child: Text(
                        'Academia',
                        style:
                        TextStyle(fontSize: 20, color: Colors.purple[900]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FamilyInfo()));
                      },
                      child: Text(
                        'Family info',
                        style:
                        TextStyle(fontSize: 20, color: Colors.purple[900]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (
                            context) => const Hobbies()));
                      },
                      child: Text(
                        'Hobbies',
                        style:
                        TextStyle(fontSize: 20, color: Colors.purple[900]),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
