import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lottery App'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('Lottery winning Number is: 4')),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: x == 4
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.done_all,
                            color: Colors.green,
                            size: 35,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Congratulation you are the winner \n Your number is $x",
                            textAlign: TextAlign.center,
                          )
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 35,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Better luck next time your number is $x \n Try again",
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(10);
            print(x);
            setState(() {});
          },
          child: const Icon(Icons.refresh),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
