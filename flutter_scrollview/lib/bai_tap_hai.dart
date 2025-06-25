import 'package:flutter/material.dart';

class BaiTapHai extends StatelessWidget {
  const BaiTapHai({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text(
          "News Feed",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),

        Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(width: 10),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://picsum.photos/150/200?random=0",
                    ),
                  ),

                  Positioned(
                    bottom: 5,
                    left: 5,
                    child: Text(
                      "Tony Starr",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),

              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://picsum.photos/150/200?random=1",
                    ),
                  ),

                  Positioned(
                    bottom: 5,
                    left: 5,
                    child: Text(
                      "Tony Starr",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),

              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://picsum.photos/150/200?random=2",
                    ),
                  ),

                  Positioned(
                    bottom: 5,
                    left: 5,
                    child: Text(
                      "Tony Starr",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        Text(
          "Friends online",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),

        Container(
          height: 70,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(width: 10),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.network("https://i.pravatar.cc/70"),
                  ),

                  Positioned(
                    right: 0,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.network("https://i.pravatar.cc/70"),
                  ),

                  Positioned(
                    right: 0,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.network("https://i.pravatar.cc/70"),
                  ),

                  Positioned(
                    right: 0,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.network("https://i.pravatar.cc/70"),
                  ),

                  Positioned(
                    right: 0,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.network("https://i.pravatar.cc/70"),
                  ),

                  Positioned(
                    right: 0,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.network("https://i.pravatar.cc/70"),
                  ),

                  Positioned(
                    right: 0,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.network("https://i.pravatar.cc/70"),
                  ),

                  Positioned(
                    right: 0,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.network("https://i.pravatar.cc/70"),
                  ),

                  Positioned(
                    right: 0,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.network("https://i.pravatar.cc/70"),
                  ),

                  Positioned(
                    right: 0,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.network("https://i.pravatar.cc/70"),
                  ),

                  Positioned(
                    right: 0,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.network("https://i.pravatar.cc/70"),
                  ),

                  Positioned(
                    right: 0,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.network("https://i.pravatar.cc/70?random=1"),
                  ),

                  Positioned(
                    right: 0,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.network("https://i.pravatar.cc/70?random=1"),
                  ),

                  Positioned(
                    right: 0,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.network("https://i.pravatar.cc/70?random=3"),
                  ),

                  Positioned(
                    right: 0,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
            ],
          ),
        ),

        Text(
          "Contacts",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),

        ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              "https://ui-avatars.com/api/?name=ten&background=random&bold=true",
            ),
          ),
          title: Text("ten"),
          subtitle: Text("ten"),
          trailing: Icon(Icons.face),
          onTap: () {
            print("ListTitle đang được bấm !!!");
          }, // sự kiện nhấn (click)
        ),
        ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              "https://ui-avatars.com/api/?name=ten&background=random&bold=true",
            ),
          ),
          title: Text("ten"),
          subtitle: Text("ten"),
          trailing: Icon(Icons.face),
          onTap: () {
            print("ListTitle đang được bấm !!!");
          }, // sự kiện nhấn (click)
        ),
        ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              "https://ui-avatars.com/api/?name=ten&background=random&bold=true",
            ),
          ),
          title: Text("ten"),
          subtitle: Text("ten"),
          trailing: Icon(Icons.face),
          onTap: () {
            print("ListTitle đang được bấm !!!");
          }, // sự kiện nhấn (click)
        ),
        ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              "https://ui-avatars.com/api/?name=ten&background=random&bold=true",
            ),
          ),
          title: Text("ten"),
          subtitle: Text("ten"),
          trailing: Icon(Icons.face),
          onTap: () {
            print("ListTitle đang được bấm !!!");
          }, // sự kiện nhấn (click)
        ),
        ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              "https://ui-avatars.com/api/?name=ten&background=random&bold=true",
            ),
          ),
          title: Text("ten"),
          subtitle: Text("ten"),
          trailing: Icon(Icons.face),
          onTap: () {
            print("ListTitle đang được bấm !!!");
          }, // sự kiện nhấn (click)
        ),
        ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              "https://ui-avatars.com/api/?name=ten&background=random&bold=true",
            ),
          ),
          title: Text("ten"),
          subtitle: Text("ten"),
          trailing: Icon(Icons.face),
          onTap: () {
            print("ListTitle đang được bấm !!!");
          }, // sự kiện nhấn (click)
        ),
        ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              "https://ui-avatars.com/api/?name=ten&background=random&bold=true",
            ),
          ),
          title: Text("ten"),
          subtitle: Text("ten"),
          trailing: Icon(Icons.face),
          onTap: () {
            print("ListTitle đang được bấm !!!");
          }, // sự kiện nhấn (click)
        ),
        ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              "https://ui-avatars.com/api/?name=ten&background=random&bold=true",
            ),
          ),
          title: Text("ten"),
          subtitle: Text("ten"),
          trailing: Icon(Icons.face),
          onTap: () {
            print("ListTitle đang được bấm !!!");
          }, // sự kiện nhấn (click)
        ),
        ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              "https://ui-avatars.com/api/?name=ten&background=random&bold=true",
            ),
          ),
          title: Text("ten"),
          subtitle: Text("ten"),
          trailing: Icon(Icons.face),
          onTap: () {
            print("ListTitle đang được bấm !!!");
          }, // sự kiện nhấn (click)
        ),
      ],
    );
  }
}
