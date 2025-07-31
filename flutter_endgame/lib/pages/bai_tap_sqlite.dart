import 'package:flutter/material.dart';
import 'package:flutter_endgame/db/dao/user_dao.dart';

class BaiTapSqlite extends StatefulWidget {
  const BaiTapSqlite({super.key});

  @override
  State<BaiTapSqlite> createState() => _BaiTapSqliteState();
}

class _BaiTapSqliteState extends State<BaiTapSqlite> {
  var listUser = [];

  var name = "";
  var email = "";
  var phone = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    reloadData();
  }

  reloadData() {
    getUsers().then((value) {
      setState(() {
        listUser = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {
            showModalBottomSheet(
              showDragHandle: true,
              context: context,
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    height: 500,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            onChanged: (value) {
                              name = value;
                            },
                            decoration: InputDecoration(
                              labelText: "Name",
                              border: OutlineInputBorder(),
                            ),
                          ),

                          SizedBox(height: 10),
                          TextFormField(
                            onChanged: (value) {
                              email = value;
                            },
                            decoration: InputDecoration(
                              labelText: "Email",
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 10),

                          TextFormField(
                            onChanged: (value) {
                              phone = value;
                            },
                            decoration: InputDecoration(
                              labelText: "Phone",
                              border: OutlineInputBorder(),
                            ),
                          ),
                          ElevatedButton(
                            child: const Text('Lưu'),
                            onPressed: () {
                              var user = {
                                'name': name,
                                'email': email,
                                'phone': phone,
                              };

                              // thêm mới user vào sqlite
                              insertUser(user);

                              // load data mới lên giao diện
                              reloadData();

                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
          icon: Icon(Icons.add),
        ),
        Container(
          height: 600,
          child: ListView.builder(
            itemCount: listUser.length,
            itemBuilder: (context, index) {
              var user = listUser[index];
              return ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    "https://ui-avatars.com/api/?name=${user["name"]}xxxx&background=random&bold=true",
                  ),
                ),
                title: Text("${user['name']}"),
                subtitle: Text("${user['email']} | ${user['phone']}"),
                trailing: IconButton(
                  onPressed: () {
                    deleteUser(user['id']);
                    reloadData();
                  },
                  icon: Icon(Icons.delete),
                ),
                onTap: () {
                  name=user['name'];
                  email=user['email'];
                  phone=user['phone'];
                  showModalBottomSheet(
                    showDragHandle: true,
                    context: context,
                    builder: (BuildContext context) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: SizedBox(
                          height: 500,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextFormField(
                                  initialValue: user['name'],
                                  onChanged: (value) {
                                    name = value;
                                  },
                                  decoration: InputDecoration(
                                    labelText: "Name",
                                    border: OutlineInputBorder(),
                                  ),
                                ),

                                SizedBox(height: 10),
                                TextFormField(
                                  initialValue: user['email'],
                                  onChanged: (value) {
                                    email = value;
                                  },
                                  decoration: InputDecoration(
                                    labelText: "Email",
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(height: 10),

                                TextFormField(
                                  initialValue: user['phone'],
                                  onChanged: (value) {
                                    phone = value;
                                  },
                                  decoration: InputDecoration(
                                    labelText: "Phone",
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                ElevatedButton(
                                  child: const Text('Lưu'),
                                  onPressed: () {
                                    var newUser = {
                                      'name': name,
                                      'email': email,
                                      'phone': phone,
                                    };

                                    // thêm mới user vào sqlite
                                    updateUser(newUser,user['id']);

                                    // load data mới lên giao diện
                                    reloadData();

                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }, // sự kiện nhấn (click)
              );
            },
          ),
        ),
      ],
    );
  }
}
