import 'package:flutter/material.dart';
import 'package:project_work/InputData/name_input.dart';
import 'package:project_work/second_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: Drawer(
          child: Column(
        children: [
          Text('data'),
          Text('data'),
        ],
      )),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.07),
        child: AppBar(
          backgroundColor: Color(0xFF82B1FF),
          centerTitle: true,
          title: Padding(
            padding: EdgeInsets.only(top: screenHeight * 0.01),
            child: Text(
              'หน้าเเรก',
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
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.12,
          ),
          NameInput(nameController: nameController),
          Container(
            height: screenHeight * 0.06,
            width: screenWidth * 0.15,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SecondScreen()));
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF82B1FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: Text(
                'หน้าต่อไป',
                style: TextStyle(
                    fontSize: screenWidth * 0.02,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
