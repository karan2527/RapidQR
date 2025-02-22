import 'package:flutter/material.dart';
import 'package:rapidqr/generate_qr_code.dart';
import 'package:rapidqr/scan_qr_code.dart';

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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScanQRCode()));
                });


              }, child: Text('Scan QR code')),
              SizedBox(height:40 ),
              ElevatedButton(onPressed: (){
                setState(() {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GenerateQRCode())
                    
                    );
               
                });
              }, child: Text('Generate QR code'),)
            ],
      ),
        
    )
      
    );
  }
}
