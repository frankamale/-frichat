import 'package:flutter/material.dart';class GettingStarted extends StatefulWidget {
  const GettingStarted({super.key});

  @override
  State<GettingStarted> createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.teal,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text("Getting Started...", style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300
              ),),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Full Name:',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Enter Full Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Email Address:',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter email address",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Password:',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter password",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(20))),
                ),
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
              ),]   ,
          ),
        ),
      ),
    );
  }
}
