import 'package:flutter/material.dart';
import 'package:flutter_endgame/db/ui_db.dart';
import 'package:flutter_endgame/pages/bai_tap_sqlite.dart';
import 'package:flutter_endgame/pages/page_a.dart';
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
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(Uri.parse('https://kenh14.vn'))) {
    throw Exception('Could not launch');
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var indexPage = 2;
  var listPage = [HomePage(), PageA(), BaiTapSqlite(), UiDb()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(Icons.home),
        title: Text("Home"),
        actions: [],
      ),
      body: listPage[indexPage],

      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            indexPage = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.yellow,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Page A"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "BT"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Dev"),
        ],
        currentIndex: indexPage,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Text("Hello world!!")]);
  }
}
