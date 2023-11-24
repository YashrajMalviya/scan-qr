import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_scanner/qr_scanner.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text(
          "QR Scanner",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Column(
        children: [
          QrImageView(data: '', size: 150, version: QrVersions.auto),
          const Text(
            "Scanned result",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Result",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 100,
            height: 48,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text(
                "Copy",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  letterSpacing: 1,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
