import 'package:flutter/material.dart';

class Academia extends StatefulWidget {
  const Academia({super.key});

  @override
  State<Academia> createState() => _PersonalDataState();
}

class _PersonalDataState extends State<Academia> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  CircleAvatar(
                      radius: 70,
                      child: Image.asset('lib/assets/workplace.png')),
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
                          'Info',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.purple[900],
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Overview',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Academia',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.purple[900],
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    size: 70,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Education Level',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple[900],
                ),
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'School/College',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple[900],
                ),
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Address',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple[900],
                ),
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
           const SizedBox(height: 40,),


              GestureDetector(
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(
                    child: Text(
                      'Save', style: TextStyle(
                        fontSize: 30,
                        color: Colors.purple[900]
                    ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
