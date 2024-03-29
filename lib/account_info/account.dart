import 'package:flutter/material.dart';

import 'edit_name.dart';
import 'edit_number.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "@frichat",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              const SizedBox(
                width: 40,
              ),
              GestureDetector(
                child: const Icon(
                  Icons.settings_suggest_outlined,
                  size: 30,
                  color: Colors.white,
                ),
                onTap: () {},
              ),
              const SizedBox(
                width: 15,
              ),
            ])
          ],
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            alignment: Alignment.center,
            color: Colors.greenAccent,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 50,
                ),
                Text(
                  "Account",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
                Icon(
                  Icons.person,
                  size: 60,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: Image.asset('lib/assets/profile_pic.png'),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  const Text(
                    'Update profile picture',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const EditName()));
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Change username',
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(Icons.edit)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const EditNumber()));
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Change phone number',
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(Icons.edit)
                ],
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const EditName()));
                  },
                  child: const Text(
                    'Write about yourself ',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const Icon(Icons.arrow_circle_up_outlined)
              ],
            ),
          )
        ],
      ),
    );
  }
}
