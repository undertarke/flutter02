import 'package:flutter/material.dart';
import 'package:flutter_endgame/db/ui_db.dart';
import 'package:flutter_endgame/pages/bai_tap_sqlite.dart';
import 'package:flutter_endgame/pages/page_a.dart';
import 'package:flutter_endgame/pages/product_detail.dart';
import 'package:flutter_endgame/services/product_service.dart';
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
      routes: {"detail": (context) => ProductPage()},
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
  var indexPage = 1;
  var listPage = [HomePage(), PageA(), BaiTapSqlite(), UiDb()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(30),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.home, color: Colors.white),
        ),
      ),
      backgroundColor: Colors.grey,
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
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "BT"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Dev"),
        ],
        currentIndex: indexPage,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var listProduct = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProduct().then((value) {
      setState(() {
        listProduct = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),

      itemCount: listProduct.length,
      itemBuilder: (context, index) {
        var item = listProduct[index];
        return Card(
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "detail",arguments: item["id"]);
            },
            child: Stack(
              children: [
                Column(
                  children: [
                    Image.network(item["image"], fit: BoxFit.fill, width: 150),
                    Text("${item["id"]}-${item["name"]}"),
                    Text("\$ ${item["price"]}"),
                  ],
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: Icon(Icons.check_circle_rounded),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
