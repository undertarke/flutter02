import 'package:flutter/material.dart';
import 'package:flutter_endgame/page_a.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: Scaffold(body: Column(
        children: [
          Icon(FontAwesomeIcons.user),
          ElevatedButton(onPressed: _launchUrl, child: Text("Mở kenh14"))
        ],
      )),
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(Uri.parse('https://kenh14.vn'))) {
    throw Exception('Could not launch');
  }
}
