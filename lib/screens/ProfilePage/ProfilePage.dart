import 'package:final_advanced_mobile/constants/account.dart';
import 'package:final_advanced_mobile/constants/countries.dart';
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
  final TextEditingController emailController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final setting = Provider.of<SettingProvider>(context);
    final lang = setting.lang == "English" ? EnglishLang : VietnameseLang;
    List<String> selectCountries = countries.values.toList();

    setState(() {
      nameController.text = setting.profile.name;
    });

    return Scaffold(
      appBar: MyAppBar(),
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
                Text(
                  setting.profile.name,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                Container(
                  child: Text(
                    "Id: " + setting.profile.id,
                    style: TextStyle(
                        fontSize: 14, color: Color.fromRGBO(0, 0, 0, 0.54)),
                  ),
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 30),
                ),
                Container(
                  child: Text(
                    lang["profile_review"] ?? "Others review you",
                    style: TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 30),
                ),
                Container(
                  child: Text(
                    lang["profile_change_password"] ?? "Change password",
                    style: TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(lang["profile_account"] ?? "Account",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 30),
                ),
                MyInputField(
                  controller: nameController,
                  title: lang["profile_name"] ?? "Name",
                  placeholder: setting.profile.name,
                  required: true,
                ),
                MyInputField(
                  controller: emailController,
                  title: lang["profile_email"] ?? "Email Address",
                  placeholder: setting.profile.email,
                  disabled: true,
                ),
                // MyInputField(
                //   controller: countryController,
                //   title: lang["profile_country"] ?? "Country",
                //   placeholder: setting.profile.country,
                //   required: true,
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 30, bottom: 10),
                  child: Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Text("* ", style: TextStyle(color: Colors.red),),
                        Text(
                          (lang["profile_country"] ?? "Country").toUpperCase(),
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Color.fromRGBO(164, 176, 190,1)
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: DropdownMenu(
                    initialSelection: selectCountries.first,
                    dropdownMenuEntries: selectCountries.map<DropdownMenuEntry<String>>((String value) {
                      return DropdownMenuEntry<String>(value: value, label: value);
                    }).toList(),),
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 30),
                ),
                MyInputField(
                  controller: phoneController,
                  title: lang["profile_phone"] ?? "Phone Number",
                  placeholder: setting.profile.phone,
                  required: true,
                  disabled: true,
                ),
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
