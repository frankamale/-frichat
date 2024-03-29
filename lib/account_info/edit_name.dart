import 'package:flutter/material.dart';

class EditName extends StatefulWidget {
  const EditName({super.key});

  @override
  State<EditName> createState() => _EditNameState();
}

class _EditNameState extends State<EditName> {
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
                'Edit Name',
                style: TextStyle(fontSize: 25, color: Colors.purple[900]),
              ),
              Divider(),

              SizedBox(height: 20,),

             TextField(
               decoration: InputDecoration(
                 labelText: 'Input name',
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(20)
                 ),

               ),
             ),
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Edit name', style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple[900],
                  ),
                  ),
                  const Icon(Icons.edit)
                ],
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Write about yourself',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('about yourself', style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple[900],
                  ),

                  ),
                  const Icon(Icons.edit)
                ],
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
