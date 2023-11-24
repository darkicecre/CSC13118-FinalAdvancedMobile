import 'package:final_advanced_mobile/constants/account.dart';
import 'package:final_advanced_mobile/constants/lang.dart';
import 'package:final_advanced_mobile/providers/setting.dart';
import 'package:final_advanced_mobile/screens/ReUse/MyAppBar.dart';
import 'package:final_advanced_mobile/widgets/MyInputField.dart';
import 'package:final_advanced_mobile/screens/ReUse/SocialList.dart';
import 'package:flutter/material.dart';
import 'package:final_advanced_mobile/routes/route.dart' as route;
import 'package:provider/provider.dart';

class ResetPasswordSentPage extends StatefulWidget {
  const ResetPasswordSentPage({super.key});

  @override
  State<ResetPasswordSentPage> createState() => _ResetPasswordSentPageState();
}

class _ResetPasswordSentPageState extends State<ResetPasswordSentPage> {

  @override
  Widget build(BuildContext context) {
    final setting = Provider.of<SettingProvider>(context);
    final lang = setting.lang == "English" ? EnglishLang : VietnameseLang;

    return Scaffold(
      appBar: MyAppBar(
        isPermission: false,
      ),
      body: Center(
          child: ListView(
            children: [
              SizedBox(
                height: 100,
              ),
              Center(
                  child: Text(
                    lang['login_reset_password'] ?? 'Reset Password',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                        color: Color.fromRGBO(0, 0, 0, 0.85)),
                  )),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(lang['login_reset_password_sent_description'] ??
                    'Check your inbox for a link to reset your password.'),
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
                      Navigator.popAndPushNamed(context, 'login');
                    },
                    child: Text(
                      lang['login_reset_password_sent_back'] ?? 'Return Login Page',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
