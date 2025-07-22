import 'package:flutter/material.dart';
import 'package:flutter_routing/pages/page_a.dart';
import 'package:flutter_routing/pages/page_b.dart';
import 'package:flutter_routing/pages/page_c.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // khai báo routes để chuyển trang
      routes: {
        'home': (context) => Home(),
        'page-a': (context) => PageA(),
        'page-b': (context) => PageB(),
        'page-c': (context) => PageC(),
      },

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var indexPage = 3;
  var listPage = [HomePage(), PageA(), PageB(), PageC()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(Icons.home),
        title: Text("Home"),
        actions: [Icon(Icons.settings), Icon(Icons.person)],
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
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Page A"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Page B"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Page C"),
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
    return Column(
      children: [
        Text("Hello world!!"),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, "page-a", arguments: "hello world ");
          },
          child: Text("Qua trang A"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Back"),
        ),
      ],
    );
  }
}
