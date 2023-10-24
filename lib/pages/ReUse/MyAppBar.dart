import 'package:final_advanced_mobile/pages/ReUse/NavigationMenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MyAppBar({super.key,
    this.isPermission = true,
    this.isClickMenu = false
  });

  final bool isPermission;
  final bool isClickMenu;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: SvgPicture.asset("assets/images/lettutor_logo.svg",
            height: 35, fit: BoxFit.scaleDown),
      ),
      actions: [
        Container(
          alignment: Alignment.centerRight,
          height: 45,
          width: 45,
          margin: EdgeInsets.only(right: 5),
          child: ElevatedButton(
            onPressed: () {},
            child: Container(
              child:
              SvgPicture.asset("assets/images/usa_flag.svg", height: 26),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              clipBehavior: Clip.hardEdge,
            ),
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(5),
              backgroundColor:
              Color.fromRGBO(228, 230, 235, 1), // <-- Button color
              foregroundColor: Colors.red, // <-- Splash color
            ),
          ),
        ),
        isPermission ? Container(
          height: 45,
          width: 45,
          margin: EdgeInsets.only(right: 10),
          child: ElevatedButton(
            onPressed: (){
              if(!isClickMenu){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NavigationMenu(isClickMenu: true,)),
                );
              }
              else{
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => const NavigationMenu()),
                );
              }
            },
            child:  FaIcon(
              FontAwesomeIcons.ellipsisVertical,
              size: 22,
              color: Colors.blue,
            ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(10),
                backgroundColor:
                Color.fromRGBO(228, 230, 235, 1), // <-- Button color
                foregroundColor: Colors.red, // <-- Splash color
              )
          ),
        ) : SizedBox.shrink()
      ],
      elevation: 1,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
