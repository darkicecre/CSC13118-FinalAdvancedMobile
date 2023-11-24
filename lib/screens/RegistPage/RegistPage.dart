import 'package:final_advanced_mobile/constants/account.dart';
import 'package:final_advanced_mobile/constants/lang.dart';
import 'package:final_advanced_mobile/providers/setting.dart';
import 'package:final_advanced_mobile/screens/ReUse/MyAppBar.dart';
import 'package:final_advanced_mobile/widgets/MyInputField.dart';
import 'package:final_advanced_mobile/screens/ReUse/SocialList.dart';
import 'package:flutter/material.dart';
import 'package:final_advanced_mobile/routes/route.dart' as route;
import 'package:provider/provider.dart';

class RegistPage extends StatefulWidget {
  const RegistPage({super.key});

  @override
  State<RegistPage> createState() => _RegistPageState();
}

class _RegistPageState extends State<RegistPage> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();



  @override
  Widget build(BuildContext context) {
    final setting = Provider.of<SettingProvider>(context);
    final lang = setting.lang == "English" ? EnglishLang : VietnameseLang;

    bool isExistedAccount(email){
      for(final account in accounts){
        if(email == account['email']){
          return true;
        }
      }
      return false;
    }

    void signup(){
      if(email.text != '' &&password.text != ''&&confirmPassword.text != ''){ //validate
        if(confirmPassword.text!= password.text){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Regist failed! Password and Confirm Password not same'),
          ));
          return;
        }
        if(!isExistedAccount(email.text)){ //Check if not existed other account same email
          accounts.add({"email":email.text,"password":password.text});
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Regist successfuly!'),
          ));
          Navigator.pushNamedAndRemoveUntil(context, 'login', (Route<dynamic> route) => false);
        }
        else{
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Regist failed! Email existed'),
          ));
        }
      }
      else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Regist failed! Email or password is null'),
        ));
      }
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
                lang['login_regist_say_hello'] ?? "Start learning with LetTutor",
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
                  lang['login_regist_description'] ?? "Become fluent faster through one on one video chat lessons tailored to your goals.",
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
              MyInputField(
                title: lang['login_confirm_password'] ?? 'Confirm Password',
                controller: confirmPassword,
                type: 'Password',
                placeholder: '',
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
                      signup();
                    },
                    child: Text(
                      lang['login_register'] ?? 'SIGN UP',
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
                    Text(lang['login_already'] ?? 'Already have an account?'),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                        onTap: () => {
                          Navigator.popAndPushNamed(context, 'login')
                        },
                        child: Text(
                          lang['login_login'] ?? 'Log in',
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
