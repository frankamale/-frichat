import 'package:flutter/material.dart';

class EditNumber extends StatefulWidget {
  const EditNumber({super.key});

  @override
  State<EditNumber> createState() => _EditNumberState();
}

class _EditNumberState extends State<EditNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Center(
                child: Container(
                    height: 150,
                    child: Image.asset('lib/assets/profile_holder.png')),
              ),
              Text(
                'Edit Number',
                style: TextStyle(fontSize: 25, color: Colors.purple[900]),
              ),
              Divider(),

              SizedBox(height: 20,),

              Container(
                alignment: Alignment.centerLeft,
                child: Text('Input old number', style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple[900],
                ),
                ),
              ),

             Container(
               height: 50,
               child: TextField(
                 decoration: InputDecoration(
                   border: OutlineInputBorder(

                     borderRadius: BorderRadius.circular(20)
                   ),

                 ),
               ),
             ),

              SizedBox(height: 20,),

              Container(
                alignment: Alignment.centerLeft,
                child: Text('Input new number', style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple[900],
                ),
                ),
              ),
              Container(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(20)
                    ),

                  ),
                ),
              ),


              const SizedBox(height: 30,),

              Container(
                alignment: Alignment.centerLeft,
                child: Text('Confirm new number', style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple[900],
                ),
                ),
              ),

              Container(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(20)
                    ),

                  ),
                ),
              ),

              const SizedBox(height: 30,),

              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(child: Text('Send',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple[900]
                  ),
                )),

              )

            ],
          ),
        ),
      ),
    );
  }
}
