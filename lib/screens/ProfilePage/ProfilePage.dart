import 'package:final_advanced_mobile/constants/account.dart';
import 'package:final_advanced_mobile/constants/lang.dart';
import 'package:final_advanced_mobile/providers/setting.dart';
import 'package:final_advanced_mobile/screens/ReUse/MyAppBar.dart';
import 'package:final_advanced_mobile/widgets/MyInputField.dart';
import 'package:final_advanced_mobile/screens/ReUse/SocialList.dart';
import 'package:flutter/material.dart';
import 'package:final_advanced_mobile/routes/route.dart' as route;
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController nameController = TextEditingController();

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
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: 130,
                  height: 130,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(setting.profile.avatar),
                  ),
                ),
                Text(setting.profile.name, style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
                Text("Id: "+setting.profile.id, style: TextStyle(fontSize: 14,color: Color.fromRGBO(0, 0, 0, 0.54)),),
                Text(lang["profile_review"] ?? "Others review you", style: TextStyle(fontSize: 14,color: Colors.blue),),
                Text(lang["profile_change_password"] ?? "Change password", style: TextStyle(fontSize: 14,color: Colors.blue),),
                SizedBox(height: 20,),
                Text(lang["profile_account"] ?? "Account"),
                MyInputField(controller: nameController, title: lang["profile_name"]??"Name",placeholder: setting.profile.name,)
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border(
                  top: BorderSide(color: Colors.blue, width: 4),
                  left: BorderSide(color: Colors.blue, width: 1),
                  right: BorderSide(color: Colors.blue, width: 1),
                  bottom: BorderSide(color: Colors.blue, width: 4),
                )),
            margin: EdgeInsets.only(left: 10, right: 10, top: 35, bottom: 35),
          )
        ],
      )),
    );
  }
}
