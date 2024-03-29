import 'package:afri_chat/edit_profile/edit_profile.dart';
import 'package:flutter/material.dart';

import 'account_info/account.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("@frichat",
              style: TextStyle(
                  color: Colors.white,
                  fontSize:25
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Account() ));
                },
                child: SizedBox(//profile
                    height: 30,
                    width: 30,
                    child: Image.asset('lib/assets/img.png'),

                )),
              const SizedBox(width: 15,),
              const Icon(
                Icons.search,
                size: 30,
                color: Colors.white,
              ),
                  const SizedBox(width: 15,),

                  GestureDetector(
                    child: const Icon(
                                    Icons.settings_suggest_outlined,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                    onTap: (){},
                  ),
                  const SizedBox(width: 15,),

                ])
          ],
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: SizedBox(
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Account()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Account", style: TextStyle(fontSize: 20, color: Colors.purple[900], ),),
                        const Icon((Icons.chevron_right))
                      ],
                    ),
                  ),
                ),

              ),
              const Divider(),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const EditProfile()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Edit profile", style: TextStyle(fontSize: 20, color: Colors.purple[900], ),),
                        const Icon((Icons.chevron_right))
                      ],
                    ),
                  ),
                ),
              ),
            ],
         ),
      )
    );
  }
}
