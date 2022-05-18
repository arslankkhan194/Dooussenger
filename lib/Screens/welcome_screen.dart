import 'package:flutter/material.dart';
import 'package:messenger/Utils/Colors.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 150,
          ),
          Image.asset('assets/image 1.png'),
          const Text(
            'Dooussenger',
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
              'Inbox keeps things organised and helps you get back to what matters',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          Flexible(
            child: Container(),
            flex: 2,
          ),
          CircleAvatar(
            backgroundColor: primaryColor,
            radius: 30,
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(
                Icons.arrow_forward,
                size: 30,
              ),
              color: Colors.white,
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
