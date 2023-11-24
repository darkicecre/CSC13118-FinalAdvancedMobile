import 'package:final_advanced_mobile/constants/account.dart';
import 'package:final_advanced_mobile/constants/lang.dart';
import 'package:final_advanced_mobile/providers/setting.dart';
import 'package:final_advanced_mobile/screens/ReUse/MyAppBar.dart';
import 'package:final_advanced_mobile/widgets/MyInputField.dart';
import 'package:final_advanced_mobile/screens/ReUse/SocialList.dart';
import 'package:flutter/material.dart';
import 'package:final_advanced_mobile/routes/route.dart' as route;
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();



  @override
  Widget build(BuildContext context) {
    final setting = Provider.of<SettingProvider>(context);
    final lang = setting.lang == "English" ? EnglishLang : VietnameseLang;

    void login(){
      for(final account in accounts){
        if(email.text == account['email'] && password.text == account['password']){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Welcome to LetTutor!'),
          ));
          Navigator.pushNamedAndRemoveUntil(context, 'tutor', (Route<dynamic> route) => false);
          return;
        }
      }
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Login failed! Email or password is wrong'),
      ));
    }

    return Scaffold(
      appBar: MyAppBar(isPermission: false,),
      body: Center(
          child: ListView(
            children: [
              Container(
                child: Image.asset('assets/images/login_banner.png'),
                width: double.infinity,
                margin: EdgeInsets.only(top: 30.0, right: 10),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                lang['login_say_hello'] ?? "Say hello to your English tutors",
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
                  lang['login_description'] ?? "Become fluent faster through one on one video chat lessons tailored to your goals.",
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
                controller: email,
                type: 'Text',
                placeholder: 'mail@example.com',
              ),
              MyInputField(
                title: lang['login_password'] ?? 'Password',
                controller: password,
                type: 'Password',
                placeholder: '',
              ),
              Container(
                margin: EdgeInsets.only(left: 30, top: 20),
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () => {
                    Navigator.popAndPushNamed(context, 'reset_password')
                  },
                  child: Text(
                    lang['login_forgot_pass'] ?? 'Forgot Password?',
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
                    onPressed: () {
                      login();
                    },
                    child: Text(
                      lang['login_button'] ?? 'LOG IN',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, top: 20, right: 20,bottom: 20),
                child: Text(lang['login_continue'] ?? 'Or continue with'),
              ),
              SocialList(),
              Container(
                margin: EdgeInsets.only(left: 30, top: 20, right: 20,bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(lang['login_not_member'] ?? 'Not a member yet?'),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                        onTap: () => {
                          Navigator.popAndPushNamed(context, 'register')
                        },
                        child: Text(
                          lang['login_register'] ?? 'Sign up',
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
      ),
    );
  }
}
