import 'package:flutter/material.dart';

class FamilyInfo extends StatefulWidget {
  const FamilyInfo({super.key});

  @override
  State<FamilyInfo> createState() => _PersonalDataState();
}

class _PersonalDataState extends State<FamilyInfo> {
  int _radio = 0;

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
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  CircleAvatar(
                      radius: 80,
                      child: Image.asset('lib/assets/workplace.png')),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Family information',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.purple[900],
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_drop_down_sharp,
                    size: 70,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Married?',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple[900],
                ),
              ),
              RadioListTile(
                  title: const Text(
                    'Yes',
                    style: TextStyle(fontSize: 18),
                  ),
                  value: 1,
                  groupValue: _radio,
                  onChanged: (int? value) {
                    setState(() {
                      _radio = value!;
                    });
                  }),
              RadioListTile(
                  title: const Text(
                    'No',
                    style: TextStyle(fontSize: 18),
                  ),
                  value: 2,
                  groupValue: _radio,
                  onChanged: (int? value) {
                    setState(() {
                      _radio = value!;
                    });
                  }),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Share moment',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple[900],
                ),
              ),
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      'Save',
                      style: TextStyle(fontSize: 30, color: Colors.purple[900]),
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
