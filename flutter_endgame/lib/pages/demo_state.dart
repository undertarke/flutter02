import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_endgame/bloc/counter_bloc.dart';
import 'package:flutter_endgame/bloc/counter_event.dart';
import 'package:flutter_endgame/provider/counter_model.dart';
import 'package:flutter_endgame/ultis/setup_notification.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:provider/provider.dart';

const AndroidNotificationDetails androidPlatformChannelSpecifics =
    AndroidNotificationDetails(
      'channel_id',
      'channel_name',
      channelDescription: 'Mô tả kênh thông báo',
      importance: Importance.max,
      priority: Priority.high,
      showWhen: true,
    );
const NotificationDetails platformChannelSpecifics = NotificationDetails(
  android: androidPlatformChannelSpecifics,
);

Future<void> showNotification(message) async {
  await flutterLocalNotificationsPlugin.show(
    0,
    'Tiêu đề thông báo',
    '$message',
    platformChannelSpecifics,
  );
}

class DemoState extends StatefulWidget {
  const DemoState({super.key});

  @override
  State<DemoState> createState() => _DemoStateState();
}

class _DemoStateState extends State<DemoState> {
  var thietBi = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getDeviceInfo();
  }

  Future<void> _getDeviceInfo() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    String info = '';

    try {
      if (Platform.isAndroid) {
        AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
        info =
            'Android Device Info: ${androidInfo.tags} \n'
            '-Model: ${androidInfo.model}\n'
            '-Brand: ${androidInfo.brand}\n'
            '-Device: ${androidInfo.device}\n'
            '-ID: ${androidInfo.id}\n'
            '-Android Version: ${androidInfo.version.release}\n'
            '-SDK: ${androidInfo.version.sdkInt}';
      } else if (Platform.isIOS) {
        IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
        info =
            'iOS Device Info:\n'
            'Name: ${iosInfo.name}\n'
            'System Name: ${iosInfo.systemName}\n'
            'System Version: ${iosInfo.systemVersion}\n'
            'Model: ${iosInfo.model}\n'
            'Identifier: ${iosInfo.identifierForVendor}';
      }
    } catch (e) {
      info = 'Lỗi khi lấy thông tin thiết bị: $e';
    }

    setState(() {
      thietBi = info;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "${context.watch<CounterBloc>().state.number}",
          style: TextStyle(fontSize: 50),
        ),
        ElevatedButton(
          onPressed: () {
            // Provider.of<CounterModel>(context, listen: false).tangSo();
            context.read<CounterBloc>().add(TangSo());
          },
          child: Text("Tăng số"),
        ),
        ElevatedButton(
          onPressed: () {
            // Provider.of<CounterModel>(context, listen: false).tangSo();
            context.read<CounterBloc>().add(GiamSo());
          },
          child: Text("Giảm số"),
        ),

        Text("$thietBi", style: TextStyle(fontSize: 20)),

        OutlinedButton(onPressed: () {
          showNotification("hello");
        }, child: Text("Bấm đi !!"))
      ],
    );
  }
}
