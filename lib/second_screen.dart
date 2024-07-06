import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.07),
        child: AppBar(
          backgroundColor: Color(0xFF82B1FF),
          centerTitle: true,
          title: Padding(
            padding: EdgeInsets.only(top: screenHeight * 0.01),
            child: Text(
              'หน้าสอง',
              style: TextStyle(
                  fontSize: screenWidth * 0.035, fontWeight: FontWeight.bold),
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Text('Starwbery Paviova',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(height: 20),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Text(
                      'Paviova is a men is a mertigury more\nPaviova is a men is a mertigury more\nPaviova is a men is a mertigury more\nPaviova is a men is a mertigury more',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(height: 20),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    SizedBox(
                      width: 45,
                    ),
                    Text('170 Reviwes')
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Icon(Icons.percent),
                    ],
                  ),
                  SizedBox(width: 35),
                  Column(
                    children: [
                      Icon(Icons.person),
                    ],
                  ),
                  SizedBox(width: 35),
                  Column(
                    children: [
                      Icon(Icons.share),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 36,
          ),
          Column(
            children: [
              Image.asset(
                'images/bus.jpg',
                height: 500,
                width: 500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
