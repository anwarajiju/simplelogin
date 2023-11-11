import 'package:flutter/material.dart';
import 'package:model_a/models/person_model.dart';
import 'package:model_a/screens/welcome_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController nameController = TextEditingController();
  String errorMessage = '';
  List<Person> people = [
    Person(
        name: 'Sasuke',
        imageUrl: 'sasuke',
        birthDay: 'Bandung, 12 Mei 2002',
        hobby: 'Musik',
        address: 'Rahayu, Margahayu utara, Kab. Bandung'),
    Person(
        name: 'Naruto',
        imageUrl: 'naruto',
        birthDay: 'Garut, 09 September 2001',
        hobby: 'Fighting',
        address: 'Cikole, ujung berung, Kota. Bandung'),
    Person(
        name: 'Sakura',
        imageUrl: 'sakura',
        birthDay: 'Purwakarta, 29 Oktober 2001',
        hobby: 'Menulis',
        address: 'Cikole, ujung berung, Kota. Bandung'),
    Person(
        name: 'Kakashi',
        imageUrl: 'kakashi',
        birthDay: 'Cimahi, 14 April 2000',
        hobby: 'Membaca',
        address: 'Cigondewah, Cibolerang utara, Kota. Bandung'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            image: AssetImage(
              'assets/images/bg-image.png',
            ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 240,
                child: Column(
                  children: [
                    Text(
                      'Mulai dari Kesederhanaan',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          height: 1,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(
                        'Untuk mewujudkan impian yang memuaskan',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/images/person.png',
                width: 250,
              ),
              SizedBox(
                width: 300,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF346DF6),
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(3.0, -3.0),
                                blurRadius: 6,
                                blurStyle: BlurStyle.inner),
                            BoxShadow(
                              color: Colors.black.withOpacity(0.12),
                              offset: Offset(-3.0, 3.0),
                              blurRadius: 8,
                            ),
                          ]),
                      child: TextField(
                        controller: nameController,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Masukkan Nama Kamu',
                          hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF84A8FD)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Text(errorMessage, style: TextStyle(color: Colors.red),),
                    SizedBox(
                      height: 9,
                    ),
                    SizedBox(
                      width: 300,
                      height: 46,
                      child: ElevatedButton(
                        onPressed: () {
                          String enteredName = nameController.text;
                          Person selectedPerson = people.firstWhere(
                            (person) => person.name == enteredName,
                          );
                          if (selectedPerson.toString() != null) {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => WelcomeScreen(
                                  selectedPerson,
                                  person: selectedPerson,
                                ),
                              ),
                            );
                            nameController.clear();
                            errorMessage = '';
                          } else {
                            setState(() {
                              errorMessage = 'nama tidak terdaftar';
                            });
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        child: Text(
                          "Let's Go!",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
