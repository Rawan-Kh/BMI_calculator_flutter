import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final double resultBmi;
  final double height;
  final int wieght;
  final int age;
  final bool isMale;
  final String name;
  const BMIResultScreen({
    Key? key,
    required this.resultBmi,
    required this.height,
    required this.wieght,
    required this.age,
    required this.isMale,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI RESULT',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: double.infinity,
            height: 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color:  Color.fromARGB(255, 243, 199, 54),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment:MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                      Text(
              'hello ',
              style:TextStyle(
                      fontWeight: FontWeight.bold,
                      color:Colors.white,
                      fontSize:20,),
                      ),
                        const SizedBox(height: 5.0),
                  Text(
                    'Gender ${isMale ? " : MALE" : " : FEMALE"}',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 44, 43, 95),
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    'Age  : $age',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 44, 43, 95),
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    'Height  : ${height.round()}',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 44, 43, 95),
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    'Weight  : $wieght',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 44, 43, 95),
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    'Your Result  : ${resultBmi.round()}',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 44, 43, 95),
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        
      ),
    );
  }
}