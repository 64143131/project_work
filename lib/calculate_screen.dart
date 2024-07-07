import 'package:flutter/material.dart';

class CalculateScreen extends StatefulWidget {
  const CalculateScreen({Key? key}) : super(key: key);

  @override
  State<CalculateScreen> createState() => _CalculateScreenState();
}

class _CalculateScreenState extends State<CalculateScreen> {
  double loanAmount = 0.0;
  double interrestRate = 0.0;
  double result = 0.0;

  void calculate() {
    setState(() {
      result = loanAmount + ((loanAmount * interrestRate) / 100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculate",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF82B1FF),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 45),
          child: Column(
            children: [
              Text(
                'จำนวนเงินที่ต้องจ่าย ${result.toStringAsFixed(2)}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        label: Text('จำนวนเงินกู้'),
                      ),
                      onChanged: (value) {
                        setState(() {
                          loanAmount = double.parse(value);
                        });
                      },
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        label: Text('ดอกเบี้ย'),
                      ),
                      onChanged: (value) {
                        setState(() {
                          interrestRate = double.parse(value);
                        });
                      },
                    ),
                    SizedBox(height: 30),
                    ElevatedButton.icon(
                      onPressed: () {
                        calculate();
                      },
                      label: Text('คำนวณ'),
                      icon: Icon(Icons.calculate),
                    )
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
