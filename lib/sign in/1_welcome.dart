import 'package:afri_chat/sign%20in/2_getting_started.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.teal,
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            Image.asset(
              "lib/assets/logo.png",
              height: 200,
              width: 200,
            ),
            const SizedBox(
              height: 150,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const GettingStarted()));
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12,
                ),
                child: const Center(
                    child: Text(
                  'Agree and continue',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                )),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            const Text(
              "FROM",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 10,),
            const Text(
              "eST",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w900
              ),
            )
          ],
        ),
      ),
    );
  }
}
