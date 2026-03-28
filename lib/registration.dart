import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController Username_ctrl = TextEditingController();
    TextEditingController email_ctrl = TextEditingController();
    TextEditingController Address_ctrl = TextEditingController();
    TextEditingController Phone_ctrl = TextEditingController();
    List<Map<String, dynamic>> Users = [];
    return Scaffold(
      backgroundColor: Colors.green.withValues(alpha: 0.3add),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(176, 22, 21, 21),
        title: Center(
          child: Text(
            'Registration Form',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
          ),
        ),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(minWidth: 200, maxWidth: 700),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Text(
                      'Register Here',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Text("User Name"),
                  TextField(
                    controller: Username_ctrl,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                      hint: Text("Ahtisham"),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Email"),
                  TextField(
                    controller: email_ctrl,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hint: Text("abc@gmail.com"),

                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Address"),
                  TextField(
                    controller: Address_ctrl,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.home),
                      hint: Text("home address"),
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Phone"),
                  TextField(
                    controller: Phone_ctrl,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      hint: Text("03xxxxxxxx"),
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Users.add({
                        "user-name": Username_ctrl.text,
                        "pass": email_ctrl.text,
                        "address": Address_ctrl.text,
                        "phone": Phone_ctrl.text,
                      });
                      print(Users);
                      Username_ctrl.clear();
                      email_ctrl.clear();
                      Address_ctrl.clear();
                      Phone_ctrl.clear();
                    },
                    child: Text('Submit'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(400, 50),

                      foregroundColor: Colors.white,
                      backgroundColor: Colors.green,
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// class Registration extends StatelessWidget {
//   const Registration({super.key});

//   @override
//   Widget build(BuildContext context) {
//     TextEditingController email = TextEditingController();
//     TextEditingController student_name = TextEditingController();
//     TextEditingController address = TextEditingController();
//     TextEditingController phone = TextEditingController();

//     List<Map<String, dynamic>> users = [];
//     return Scaffold(
//       body: Center(
//         child: ConstrainedBox(
//           constraints: const BoxConstraints(maxWidth: 600),
//           child: Card(
//             child: Padding(
//               padding: const EdgeInsets.all(20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Center(
//                     child: Text(
//                       'Student Registraction Form',
//                       style: TextStyle(
//                         fontSize: 26,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.blue,
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 50),
//                   Text('Student Name'),
//                   TextField(
//                     controller: email,
//                     decoration: InputDecoration(
//                       focusedBorder: OutlineInputBorder(),
//                       prefixIcon: Icon(Icons.person),

//                       hintText: 'Ali Raza',
//                       enabledBorder: OutlineInputBorder(),
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   TextField(
//                     controller: email,
//                     decoration: InputDecoration(
//                       focusedBorder: OutlineInputBorder(),
//                       prefixIcon: Icon(Icons.email),
//                       labelText: 'Email',

//                       enabledBorder: OutlineInputBorder(),
//                     ),
//                   ),

//                   SizedBox(height: 20),
//                   TextField(
//                     controller: phone,
//                     decoration: InputDecoration(
//                       focusedBorder: OutlineInputBorder(),
//                       prefixIcon: Icon(Icons.phone),

//                       labelText: 'Phone No',
//                       enabledBorder: OutlineInputBorder(),
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   TextField(
//                     controller: address,
//                     decoration: InputDecoration(
//                       focusedBorder: OutlineInputBorder(),
//                       prefixIcon: Icon(Icons.home),

//                       labelText: 'Address',
//                       enabledBorder: OutlineInputBorder(),
//                     ),
//                   ),
//                   SizedBox(height: 30),
//                   ElevatedButton(
//                     onPressed: () {
//                       users.add({
//                         'student_name': student_name.text,
//                         'email': email.text,
//                         'phone': phone.text,
//                         'address': address.text,
//                       });
//                       print(users);
//                       student_name.clear();
//                       email.clear();
//                       phone.clear();
//                       address.clear();
//                     },
//                     child: Text('Add Student'),
//                     style: ElevatedButton.styleFrom(
//                       minimumSize: Size(400, 50),

//                       foregroundColor: Colors.white,
//                       backgroundColor: Colors.blue,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
