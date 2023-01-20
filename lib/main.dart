import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List lottie = [
    'assets/lottie/bookmark.json',
    'assets/lottie/circle.json',
    'assets/lottie/Comp 1.json',
    'assets/lottie/CYLES.json',
    'assets/lottie/delivery address.json',
    'https://assets8.lottiefiles.com/packages/lf20_bojn7fmw.json',
    'https://assets6.lottiefiles.com/packages/lf20_qsrtwdyv.json',
    'https://assets10.lottiefiles.com/packages/lf20_yzsagzwo.json',
    'https://assets9.lottiefiles.com/packages/lf20_gomzks5q.json',
    'https://assets4.lottiefiles.com/packages/lf20_lakbmyk5.json',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Lottie Animation',style: TextStyle(fontSize: 15),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: GridView.builder(
                itemCount: lottie.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2
                ), 
                itemBuilder: (context, index) {
                  return lottie[index].toString().contains('assets/') ?
                    Card(
                      child: Lottie.asset(lottie[index]),
                    )
                  :
                    Card(
                      child: Lottie.network(lottie[index],),
                    );
                },
              )
            )
          ],
        ),
      ),
    );
  }
}
