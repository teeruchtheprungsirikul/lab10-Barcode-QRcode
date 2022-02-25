import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class QRCreatePage extends StatefulWidget {
  const QRCreatePage({ Key? key }) : super(key: key);

  @override
  _QRCreatePageState createState() => _QRCreatePageState();
}

class _QRCreatePageState extends State<QRCreatePage> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24.0),
          child: Column(
            children: [
              BarcodeWidget(
                barcode: Barcode.qrCode(),
                color: Colors.black,
                data: controller.text,
                width: 200,
                height: 200,
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Expanded(child: buildTextField(context)),
                  SizedBox(width: 12),
                  FloatingActionButton(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Icon(Icons.done, size: 30),
                    onPressed: () => setState(() {}),
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(BuildContext context) => TextField(
      controller: controller,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      decoration: InputDecoration(
        hintText: 'Enter the data',
        hintStyle: TextStyle(color: Colors.grey),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          )
        )
      ),
    );
}