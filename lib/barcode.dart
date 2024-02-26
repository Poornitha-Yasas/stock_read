import 'package:flutter/material.dart';

class BarcodePage extends StatefulWidget {
  const BarcodePage({super.key});

  @override
  State<BarcodePage> createState() => _BarcodePageState();
}

class _BarcodePageState extends State<BarcodePage> {
  TextEditingController barcodeController = TextEditingController();
  TextEditingController itemnameController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController brandController = TextEditingController();
  TextEditingController partnoController = TextEditingController();
  TextEditingController modleController = TextEditingController();
  TextEditingController costController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.white, Colors.white],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.grey.withOpacity(0.2),
        body: _page(),
      ),
    );
  }

  Widget _page() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              _inputField("Barcode", barcodeController),
              const SizedBox(height: 10),
              _inputField("Item name", itemnameController),
              const SizedBox(height: 10),
              _inputField("Category", categoryController),
              const SizedBox(height: 10),
              _inputField("Brand", brandController),
              const SizedBox(height: 10),
              _inputField("Partno", partnoController),
              const SizedBox(height: 10),
              _inputField("Model", modleController),
              const SizedBox(height: 10),
              _inputField("Cost", costController),
              const SizedBox(height: 10),
              _savebtn(),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget _inputField(String hintText, TextEditingController controller,
      {bool isPassword = false}) {
    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Colors.black),
    );

    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            spreadRadius: 2,
            blurRadius: 15,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          TextField(
            controller: controller,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.grey),
              enabledBorder: border,
              focusedBorder: border,
            ),
            obscureText: isPassword,
          ),
          const SizedBox(height: 10), // Adjust the space between text and text field
        ],
      ),
    );
  }

  Widget _savebtn() {
    return ElevatedButton(
      onPressed: () {
        // Add your logic here
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey,
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(vertical: 10),
      ),
      child: const SizedBox(
        width: 150,
        child: Text(
          "Save",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
