import 'package:flutter/material.dart';

class NameInput extends StatefulWidget {
  final TextEditingController nameController;

  const NameInput({Key? key, required this.nameController}) : super(key: key);

  @override
  State<NameInput> createState() => _NameInputState();
}

class _NameInputState extends State<NameInput> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(
        left: screenWidth * 0.25,
        right: screenWidth * 0.25,
      ),
      child: Column(
        children: [
          Text(
            'ชื่อผู้ใช้',
            style: TextStyle(
              fontSize: screenWidth * 0.033,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.015,
              bottom: screenHeight * 0.03,
            ),
            child: TextField(
              cursorColor: Color(0xFF82B1FF),
              controller: widget.nameController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'ชื่อของคุณ',
                prefixIcon: const Icon(Icons.person),
                prefixIconColor: Color(0xFF82B1FF),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(color: Colors.black87),
                ),
                labelStyle: const TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
