import 'package:flutter/material.dart';
import 'package:model_a/models/person_model.dart';

class ProfileScreen extends StatelessWidget {
  final Person person;
  const ProfileScreen({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/bg-image.png',
          ),
          fit: BoxFit.cover,
        ),
        color: Colors.white,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Container(
                      width: 320,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    margin: EdgeInsets.only(left: 40),
                    decoration: ShapeDecoration(
                      shape: CircleBorder(),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: DecoratedBox(
                        decoration: ShapeDecoration(
                          shape: CircleBorder(),
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/${person.imageUrl}.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 140,
                    left: 40,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.person_outlined,
                              color: Colors.grey[400],
                              size: 28,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              person.name,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.ballot_rounded,
                              color: Colors.grey[400],
                              size: 28,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            SizedBox(
                              width: 200,
                              child: Text(
                                person.hobby,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue[300]),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.date_range_outlined,
                              color: Colors.grey[400],
                              size: 28,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            SizedBox(
                              width: 200,
                              child: Text(
                                person.birthDay,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue[200]),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.pin_drop,
                              color: Colors.grey[400],
                              size: 28,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            SizedBox(
                              width: 200,
                              child: Text(
                                person.address,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue[200]),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              SizedBox(
                      width: 320,
                      height: 46,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        child: Text(
                          "Kembali",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
