import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyInputField extends StatelessWidget {
  const MyInputField({super.key, this.title = 'TextField', this.type = 'Text', this.placeholder = 'Enter a search',required this.controller});

  final String title;
  final String type;
  final String placeholder;
  final TextEditingController controller;
  final bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:30.0,left: 30),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Text(
              title.toUpperCase(),
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 14.0,
                color: Color.fromRGBO(164, 176, 190,1)
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right:20,top:10),
            child: TextField(
              obscureText: type=='Password'?true:false,
              controller: controller,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromRGBO(164, 176, 190,1)
                    )
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromRGBO(0, 113, 240,1)
                    )
                ),
                hintText: placeholder,
                suffixIcon: type=='Password'?IconButton(
                  icon: Icon(passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: () {},
                ):null,
              ),
            ),
          )
        ],
      ),
    );
  }
}
