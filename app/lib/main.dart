import 'dart:io';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:app/src/generated/recognize.pbgrpc.dart';

String output = "";

class RecognizeVoice {
  late final channel, stub;
  RecognizeVoice() {
    channel = ClientChannel(
      'localhost',
      port: 50052,
      options: ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    stub = RecognizerServiceClient(channel);
  }

  Future<void> startRecognition() async {
    await stub.recognize(Control()
      ..start = true
      ..stop = false);
  }

  Future<void> stopRecognition() async {
    final response = await stub.recognize(Control()
      ..start = false
      ..stop = true);
    // print(response.result);
    output = response.result;
    // return response.result;
  }
}

final RecognizeVoice _recognize = RecognizeVoice();

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
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
    _recognize.startRecognition();
  }

  void stop() {
    _recognize.stopRecognition();
    setState(() {
      recordstr = "Click to Record Audio";
      stopstr = "Your output: $output";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Voice Agent App"),
              backgroundColor: Colors.green[800],
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => {record()},
                    child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 82, 139, 85),
                                  spreadRadius: 1,
                                  blurRadius: 8,
                                  offset: Offset(4, 4)),
                            ]),
                        child: Center(
                          child: Text(
                            recordstr,
                            style: TextStyle(
                                color: Colors.grey[800],
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        )),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () => {stop()},
                    child: Container(
                        height: 40,
                        width: 450,
                        // color: Colors.white,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 82, 139, 85),
                                  spreadRadius: 1,
                                  blurRadius: 8,
                                  offset: Offset(4, 4)),
                            ]),
                        child: Center(
                          child: Text(
                            stopstr,
                            style: TextStyle(
                                color: Colors.grey[800],
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        )),
                  ),
                ],
              ),
            )));
  }
}
