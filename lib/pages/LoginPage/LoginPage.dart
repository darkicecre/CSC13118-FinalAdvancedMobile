import 'package:final_advanced_mobile/pages/ReUse/MyAppBar.dart';
import 'package:final_advanced_mobile/pages/ReUse/MyInputField.dart';
import 'package:final_advanced_mobile/pages/ReUse/SocialList.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Center(
          child: Column(
        children: [
          Expanded(
              child: SizedBox(
            child: ListView(
              children: [
                Container(
                  child: Image.asset('assets/images/login_banner.png'),
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 30.0, right: 10),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Say hello to your English tutors",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(0, 113, 240, 1),
                          fontSize: 40.0,
                          fontFamily: 'Poppins'),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        "Become fluent faster through one on one video chat lessons tailored to your goals.",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(42, 52, 83, 1),
                          fontSize: 19.0,
                          fontFamily: 'Poppins',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    MyInputField(
                      title: 'Email',
                      type: 'Text',
                      placeholder: 'mail@example.com',
                    ),
                    MyInputField(
                      title: 'Password',
                      type: 'Password',
                      placeholder: '',
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 20),
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                        onTap: () => {},
                        child: Text(
                          'Forgot Password?',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 113, 240, 1),
                              fontSize: 16.0),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 20, right: 20),
                      child: SizedBox(
                        width: double.infinity,
                        height: 44,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(0, 113, 240, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              )),
                          onPressed: () {},
                          child: const Text(
                            'LOG IN',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 20, right: 20,bottom: 20),
                      child: Text('Or continue with'),
                    ),
                    SocialList(),
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 20, right: 20,bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Not a member yet?'),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            alignment: Alignment.centerLeft,
                            child: InkWell(
                              onTap: () => {},
                              child: Text(
                                'Sign up',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 113, 240, 1)
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                )
              ],
            ),
          ))
        ],
      )),
    );
  }
}
