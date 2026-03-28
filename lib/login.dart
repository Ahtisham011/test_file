import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController Username_ctrl = TextEditingController();
    TextEditingController Password_ctrl = TextEditingController();
    List<Map<String, dynamic>> Users = [];
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Login', style: TextStyle(color: Colors.blue)),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(minWidth: 200, maxWidth: 700),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Login into Your Account',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 50),

                  TextField(
                    controller: Username_ctrl,
                    decoration: InputDecoration(
                      prefix: Icon(Icons.email),
                      labelText: 'User Name',
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: Password_ctrl,
                    decoration: InputDecoration(
                      prefix: Icon(Icons.password),
                      suffix: Icon(Icons.remove_red_eye),
                      labelText: 'Password',
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Users.add({
                        "user-name": Username_ctrl.text,
                        "pass": Password_ctrl.text,
                      });
                      print(Users);
                      Username_ctrl.clear();
                      Password_ctrl.clear();
                    },
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(400, 50),

                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 30),
                  Column(
                    spacing: 10,
                    children: [
                      Row(
                        spacing: 10,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            child: Text('Create Account'),
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            child: Text('Forget Password'),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.email),
                          Text(
                            "You can Login by Gmail",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.pink,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
