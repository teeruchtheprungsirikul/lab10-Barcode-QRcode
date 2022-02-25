import 'package:barcodescanner/page/qr_create_page.dart';
import 'package:barcodescanner/page/qr_scan_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? scanResult;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Barcode Scanner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => QRCreatePage()
              )),
              style: ElevatedButton.styleFrom(primary: Colors.red),
              child: Text(
                  'Create QR Code',
                  style: TextStyle(color: Colors.white), 
                ),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => QRScanPage()
              )),
              style: ElevatedButton.styleFrom(primary: Colors.red),
              child: Text(
                  'Create QR Code',
                  style: TextStyle(color: Colors.white), 
                ),
            )
          ],
        ),
      ),
    );
  }
}
