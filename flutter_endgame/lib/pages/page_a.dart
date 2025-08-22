import 'package:flutter/material.dart';
import 'package:flutter_endgame/pages/demo_state.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

late IO.Socket socket; // socket client

// kết nối server backend realtime socket
void connectToSocket() {
  // khai báo chuỗi kết nối
  socket = IO.io("http://10.0.2.2:8080", {
    'transports': ['websocket'],
    'autoConnect': false,
  });

  // kết nối vào server
  socket.connect();
}

class PageA extends StatefulWidget {
  const PageA({super.key});

  @override
  State<PageA> createState() => _PageAState();
}

class _PageAState extends State<PageA> {
  final TextEditingController _nameCtrl = TextEditingController();
  final TextEditingController _msgCtrl = TextEditingController();
  final ScrollController _scrollCtrl = ScrollController();

  final _messages = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    connectToSocket();
    socket.on("send-message", (data) {

      showNotification(data);

      setState(() {
        _messages.add(data.toString()); // ["","",""]
      });
      Future.delayed(const Duration(milliseconds: 50), () {
      if (_scrollCtrl.hasClients) {
        _scrollCtrl.jumpTo(_scrollCtrl.position.maxScrollExtent);
      }
    });
    });
  }

  void _sendMessage() {
    if (_nameCtrl.text.trim().isEmpty || _msgCtrl.text.trim().isEmpty) return;

    var message = {
        'sender': _nameCtrl.text.trim(),
        'message': _msgCtrl.text.trim(),
      };

    socket.emit("send-message",message);
    // call data
   
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    // socket.off("send-message");
    socket.disconnect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat đơn giản')),
      body: Column(
        children: [
          // Nhập tên
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _nameCtrl,
              decoration: const InputDecoration(
                labelText: 'Tên của bạn',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          // Khung chat
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: ListView.builder(
                controller: _scrollCtrl,
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  final msg = _messages[index];
                  return ListTile(title: Text(msg));
                },
              ),
            ),
          ),
          // Nhập nội dung + nút gửi
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _msgCtrl,
                    decoration: const InputDecoration(
                      hintText: 'Nhập tin nhắn...',
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: (_) => _sendMessage(),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _sendMessage,
                  child: const Text('Gửi'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
