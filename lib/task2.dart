import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ahtisham extends StatelessWidget {
  const Ahtisham({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 226, 49, 182),
            ),
          ),

          Text(
            "Ahtisham",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 238, 44, 196),
            ),
          ),
          Container(
            color: Colors.tealAccent,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.home,
                      color: const Color.fromARGB(255, 102, 102, 223),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                    color: const Color.fromARGB(255, 147, 147, 230),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.person_4_rounded,
                      color: const Color.fromARGB(255, 64, 140, 211),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
