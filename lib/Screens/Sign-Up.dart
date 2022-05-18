import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:messenger/Utils/Colors.dart';

import '../Widgets/text_field_Input.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _usernameController = TextEditingController();
    bool _isLoading = false;
    Uint8List? _image;

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21.0),
        child: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            const Text(
              'Sign-up',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                _image != null
                    ? CircleAvatar(
                        radius: 54,
                        backgroundImage: MemoryImage(_image),
                        backgroundColor: Colors.red,
                      )
                    : const CircleAvatar(
                        radius: 54,
                        backgroundImage:
                            NetworkImage('https://i.stack.imgur.com/l60Hf.png'),
                        backgroundColor: Colors.red,
                      ),
                Positioned(
                  bottom: -10,
                  left: 70,
                  child: IconButton(
                    onPressed: () {},
                    //onPressed():{},
                    icon: Icon(
                      Icons.add_a_photo,
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldInput(
              hintText: 'Phone Number',
              textInputType: TextInputType.text,
              textEditingController: _usernameController,
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldInput(
              hintText: 'Name',
              textInputType: TextInputType.text,
              textEditingController: _usernameController,
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldInput(
              hintText: 'Bio',
              textInputType: TextInputType.text,
              textEditingController: _usernameController,
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldInput(
              hintText: 'Password',
              textInputType: TextInputType.text,
              textEditingController: _usernameController,
            ),
            const SizedBox(
              height: 24,
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
      ),
    );
  }
}
