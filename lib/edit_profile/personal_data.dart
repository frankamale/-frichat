import 'package:flutter/material.dart';

class PersonalData extends StatefulWidget {
  const PersonalData({super.key});

  @override
  State<PersonalData> createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData> {
  int _selectedValue = 0;

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
                      'Personal data',
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
                'Full Names',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple[900],
                ),
              ),
              Container(
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
                'Residence',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple[900],
                ),
              ),
              Container(
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
                'Email',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple[900],
                ),
              ),
              Container(
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
                'Contact',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple[900],
                ),
              ),
              Container(
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
                'Gender',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple[900],
                ),
              ),
              RadioListTile(
                title: const Text(
                  'Male',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                value: 1,
                groupValue: _selectedValue,
                onChanged: (int? value) {
                  setState(() {
                    _selectedValue = value!;
                  });
                },
              ),
              RadioListTile(
                  title: const Text(
                    'Male',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  value: 2,
                  groupValue: _selectedValue,
                  onChanged: (int? value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  }),

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
