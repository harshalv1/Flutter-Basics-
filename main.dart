import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final String img =
      'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is an improvement!'),
          backgroundColor: Colors.teal,
        ),

        body: IconButton(

          icon: Hero(tag: img, child: Image.network(img)),
          iconSize: 5,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutScreen(),
                ));
          },
        ),
        // body:ElevatedButton(
        //   child:Text(" Navigation "),
        //   onPressed: (){
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context)=>AboutScreen(),
        //       )
        //     );
        //   },
        // ),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  final String img ='https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About!"),
      ),
      body: Hero(tag: img, child:Image.network(img))
    );
  }
}
