import 'package:flutter/material.dart';

class BaiTapMot extends StatelessWidget {
  const BaiTapMot({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Expanded(flex: 1, child: Container(color: Colors.red)),
              Expanded(flex: 1, child: Container(color: Colors.orange)),
              Expanded(flex: 1, child: Container(color: Colors.red)),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Expanded(flex: 1, child: Container(color: Colors.yellow)),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(color: Colors.red),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(color: Colors.deepPurple),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(flex: 1, child: Container(color: Colors.yellow)),
            ],
          ),
        ),
        Expanded(
          flex: 4,
          child: Row(
            children: [
              Expanded(flex: 1, child: Container(color: Colors.purple)),
              Expanded(flex: 1, child: Container(color: Colors.blueGrey)),
              Expanded(flex: 1, child: Container(color: Colors.purple)),
            ],
          ),
        ),
      ],
    );
  }
}
