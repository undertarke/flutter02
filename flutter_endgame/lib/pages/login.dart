import 'package:flutter/material.dart';
import 'package:flutter_endgame/bloc/counter_bloc.dart';
import 'package:flutter_endgame/provider/counter_model.dart';
import 'package:flutter_endgame/services/user_service.dart';
import 'package:flutter_endgame/ultis/local_storage.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  var token = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getToken().then((value) {
      setState(() {
        token = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đăng Nhập'), // "Login" in Vietnamese
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${context.watch<CounterBloc>().state.number}",
                style: TextStyle(fontSize: 50),
              ),
              Text("Token: ${token}"),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) => _email = value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Mật khẩu',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                onChanged: (value) => _password = value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập mật khẩu';
                  }
                  return null;
                },
              ),
              SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Thêm logic đăng nhập ở đây, ví dụ: gọi API
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Đang đăng nhập...')),
                    );

                    var data = {'email': _email, 'password': _password};
                    print(data);
                    login(data).then((value) {
                      saveToken(value["accessToken"]);
                    });
                  }
                },
                child: Text('Đăng Nhập'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
