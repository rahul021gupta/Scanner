import 'package:flutter/material.dart';
import 'package:scanner_app/scan.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff18203d),
        title: const Text("Qr Scanner"),
        centerTitle: true,
        // actions: [
        //   ElevatedButton(
        //     onPressed: () async {
        //       Navigator.of(context)
        //           .push(MaterialPageRoute(builder: (context) => ScanPage()));
        //     },

        //     child: const Icon(
        //       Icons.qr_code,
        //       color: Colors.black,
        //     ),

        //     //Text("Scan Qr ")
        //   )
        // ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(
                'assets/images/scanner.png',
              ),
              // flatButton("Scan QR CODE", ScanPage()),
              ElevatedButton(
                  onPressed: () async {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ScanPage()));
                  },
                  child: Text("Scan Qr "))
            ],
          ),
        ),
      ),
    );
  }
}
