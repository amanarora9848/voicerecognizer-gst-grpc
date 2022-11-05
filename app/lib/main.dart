import 'package:flutter/material.dart';
import 'grpc_client.dart';

// Skeleton test code for voice agent app

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _State createState() => _State();
}

class _State extends State<MyApp> {
  String recordstr = "Click to Record Audio";
  String stopstr = "";

  void record() {
    setState(() {
      recordstr = "Recording in progress";
      stopstr = "Click to Stop Recording";
    });
  }

  void stop() {
    setState(() {
      recordstr = "Click to Record Audio";
      stopstr = "Done";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Automotive Grade Linux - Voice Agent'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => {record()},
              child: Text(recordstr), // Function for Audio recorder
            ),
            ElevatedButton(onPressed: () => {stop()}, child: Text(stopstr))
          ],
        ),
      ),
    );
  }
}
