import 'package:flutter/material.dart';

class BaiTapNam extends StatelessWidget {
  const BaiTapNam({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          title: Text(
            "facebook",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
          actions: [
            Card(
              shape: CircleBorder(),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Icon(Icons.search, size: 30),
              ),
            ),
            Card(
              shape: CircleBorder(),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Icon(Icons.messenger),
              ),
            ),
          ],
        ),

        SliverToBoxAdapter(
          child: Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: Image.network("https://i.pravatar.cc/70"),
                    ),
                    Text(
                      "What's on your mind ?",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),

                Icon(Icons.image, color: Colors.green),
              ],
            ),
          ),
        ),

        SliverToBoxAdapter(
          child: Container(
            color: Colors.white,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 10,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.camera_alt, color: Colors.redAccent),
                          Text(
                            "Reel",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 10,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.camera_alt, color: Colors.redAccent),
                          Text(
                            "Reel",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),

                  Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 10,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.camera_alt, color: Colors.redAccent),
                          Text(
                            "Reel",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),

                  Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 10,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.camera_alt, color: Colors.redAccent),
                          Text(
                            "Reel",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),

                  Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 10,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.camera_alt, color: Colors.redAccent),
                          Text(
                            "Reel",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ),
        ),
        SliverPadding(padding: EdgeInsets.all(5)),

        SliverToBoxAdapter(
          child: Container(
            color: Colors.white,
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Stack(
                    children: [
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            child: Image.network(
                              "https://picsum.photos/150/150",
                            ),
                          ),

                          Container(
                            height: 80,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            child: Center(child: Text("Create a Story")),
                          ),
                        ],
                      ),

                      Positioned(
                        bottom: 50,
                        left: 50,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.white, width: 3),
                          ),
                          child: Icon(Icons.add, size: 40, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network("https://picsum.photos/150/250"),
                      ),

                      Positioned(
                        left: 10,
                        bottom: 10,
                        child: Text(
                          "Tony Yarr",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),

                      Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            border: Border.all(color: Colors.white, width: 5),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(35),
                            child: Image.network("https://picsum.photos/60/60"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),

                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network("https://picsum.photos/150/250"),
                      ),

                      Positioned(
                        left: 10,
                        bottom: 10,
                        child: Text(
                          "Tony Yarr",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),

                      Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            border: Border.all(color: Colors.white, width: 5),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(35),
                            child: Image.network("https://picsum.photos/60/60"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),

                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network("https://picsum.photos/150/250"),
                      ),

                      Positioned(
                        left: 10,
                        bottom: 10,
                        child: Text(
                          "Tony Yarr",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),

                      Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            border: Border.all(color: Colors.white, width: 5),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(35),
                            child: Image.network("https://picsum.photos/60/60"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverPadding(padding: EdgeInsets.all(5)),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network("https://picsum.photos/70"),
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Cassandra Taylor"),
                            Row(
                              children: [
                                Text("8h."),
                                Icon(Icons.circle_notifications_sharp),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),

                    Icon(Icons.more_horiz),
                  ],
                ),
              ),
              Image.network("https://picsum.photos/500"),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network("https://picsum.photos/70"),
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Cassandra Taylor"),
                            Row(
                              children: [
                                Text("8h."),
                                Icon(Icons.circle_notifications_sharp),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),

                    Icon(Icons.more_horiz),
                  ],
                ),
              ),
              Image.network("https://picsum.photos/500"),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network("https://picsum.photos/70"),
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Cassandra Taylor"),
                            Row(
                              children: [
                                Text("8h."),
                                Icon(Icons.circle_notifications_sharp),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),

                    Icon(Icons.more_horiz),
                  ],
                ),
              ),
              Image.network("https://picsum.photos/500"),
            ],
          ),
        ),
      ],
    );
  }
}
