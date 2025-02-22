import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'scan_qr_code.dart';
import 'generate_qr_code.dart';

class GenerateQRCode extends StatefulWidget {
  const GenerateQRCode({super.key});

  @override
  State<GenerateQRCode> createState() => _GenerateQRCodeState();
}

class _GenerateQRCodeState extends State<GenerateQRCode> {
  TextEditingController urlController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Generate QR code')),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (urlController.text.isNotEmpty)
                QrImageView(data: urlController.text, size: 200.0),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: urlController,
                  decoration: InputDecoration(
                    hintText: 'Enter your text',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Enter your text',
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(onPressed: (){
                setState(() {
                });
              
              },child: Text('Genrate QR Code'),),
            ],
          ),
        ),
      ),
    );
  }
}
