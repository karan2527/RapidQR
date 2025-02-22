import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR code Scanner and Generator',
      debugShowCheckedModeBanner: false,
      
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('QR code Scanner and Generator'),
      ),
        body : Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  
                });


              }, child: Text('Scan QR code')),
              SizedBox(height:40 ),
              ElevatedButton(onPressed: (){
                setState(() {
                  
                });
              }, child: Text('Generate QR code'),)
            ],
      ),
        
    )
      
    );
  }
}
