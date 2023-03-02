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
    await stub.recognize(RecognizerControl()..action = RecognizerAction.START);
  }

  Future<void> stopRecognition() async {
    final response = await stub
        .recognize(RecognizerControl()..action = RecognizerAction.STOP);
    output = response.result;
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
      recordstr = "Stop recording";
      stopstr = "Recording...";
    });
    _recognize.startRecognition();
  }

  void stop() {
    _recognize
        .stopRecognition()
        .then((value) => setState(() {
              stopstr = "Recognized Text: \n$output";
            }))
        .catchError((error) => setState(() {
              stopstr = "Something went wrong. Please try again.";
            }));
    setState(() {
      recordstr = "Click to Record Audio";
      stopstr = "Recognizing...";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Voice Agent Demo App"),
              backgroundColor: Colors.grey[800],
              centerTitle: true,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/agl.png',
                    height: 200,
                    width: 200,
                  ),
                  GestureDetector(
                    onTap: () => {
                      if (recordstr == "Click to Record Audio")
                        {record()}
                      else
                        {stop()}
                    },
                    child: Container(
                        height: 50,
                        width: 300,
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
                            textAlign: TextAlign.center,
                          ),
                        )),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      stopstr,
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            )));
  }
}
