import 'package:final_advanced_mobile/providers/setting.dart';
import 'package:final_advanced_mobile/screens/CoursesPage/CoursesPage.dart';
import 'package:final_advanced_mobile/screens/HistoryPage/HistoryPage.dart';
import 'package:final_advanced_mobile/screens/ReUse/MyAppBar.dart';
import 'package:final_advanced_mobile/screens/SchedulePage/SchedulePage.dart';
import 'package:final_advanced_mobile/screens/TutorPage/TutorPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key, this.isClickMenu = false});

  final bool isClickMenu;
  @override
  Widget build(BuildContext context) {
    final setting = Provider.of<SettingProvider>(context);

    return Scaffold(
      appBar: MyAppBar(
        isClickMenu: isClickMenu,
      ),
      body: Center(
        child: ListView(
          children: [
            ListTile(
              leading: Container(
                margin: EdgeInsets.only(top: 5, bottom: 5),
                alignment: Alignment.centerLeft,
                width: 40,
                height: 70,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(setting.profile.avatar),
                ),
              ),
              title: Text(
                setting.profile.name,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              onTap: (){
                Navigator.pushNamedAndRemoveUntil(context, 'profile', (Route<dynamic> route) => false);
              },
            ),
            ListTile(
              leading: Container(
                width: 40,
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 5),
                child: FaIcon(
                  FontAwesomeIcons.calendar,
                  size: 35,
                  color: Colors.blue,
                ),
              ),
              title: Text('Recurring Lesson Schedule',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
            ),
            ListTile(
              leading: Container(
                width: 40,
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 5),
                child: FaIcon(
                  FontAwesomeIcons.chalkboardUser,
                  size: 28,
                  color: Colors.blue,
                ),
              ),
              title: Text('Tutor',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
              onTap: (){
                // Navigator.of(context).popUntil((route) => route.isFirst);
                // Navigator.pop(
                //   context,
                //   MaterialPageRoute(builder: (context) => const NavigationMenu()),
                // );
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const TutorPage()),
                // );
                Navigator.pushNamedAndRemoveUntil(context, 'tutor', (Route<dynamic> route) => false);
              },
            ),
            ListTile(
              leading: Container(
                width: 40,
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 5),
                child: FaIcon(
                  FontAwesomeIcons.calendarCheck,
                  size: 28,
                  color: Colors.blue,
                ),
              ),
              title: Text('Schedule',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
              onTap: (){
                // Navigator.of(context).popUntil((route) => route.isFirst);
                Navigator.pushNamedAndRemoveUntil(context, 'schedules', (Route<dynamic> route) => false);
              },
            ),
            ListTile(
              leading: Container(
                width: 40,
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 5),
                child: FaIcon(
                  FontAwesomeIcons.clockRotateLeft,
                  size: 28,
                  color: Colors.blue,
                ),
              ),
              title: Text('History',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
              onTap: (){
                Navigator.pushNamedAndRemoveUntil(context, 'history', (Route<dynamic> route) => false);
              },
            ),
            ListTile(
              leading: Container(
                width: 40,
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 5),
                child: FaIcon(
                  FontAwesomeIcons.graduationCap,
                  size: 28,
                  color: Colors.blue,
                ),
              ),
              title: Text('Courses',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
              onTap: (){
                Navigator.pushNamedAndRemoveUntil(context, 'course', (Route<dynamic> route) => false);
              },
            ),
            ListTile(
              leading: Container(
                width: 40,
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 5),
                child: FaIcon(
                  FontAwesomeIcons.bookOpen,
                  size: 28,
                  color: Colors.blue,
                ),
              ),
              title: Text('MyCourses',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
            ),
            ListTile(
              leading: Container(
                width: 40,
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 5),
                child: FaIcon(
                  FontAwesomeIcons.userGraduate,
                  size: 28,
                  color: Colors.blue,
                ),
              ),
              title: Text('Become a Tutor',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
            ),
            ListTile(
              leading: Container(
                width: 40,
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 5),
                child: FaIcon(
                  FontAwesomeIcons.rightFromBracket,
                  size: 28,
                  color: Colors.blue,
                ),
              ),
              title: Text('Tutor',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
              onTap: (){
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
            ),
          ],
        ),
      ),
    );
  }
}
