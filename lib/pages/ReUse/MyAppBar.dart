import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: SvgPicture.asset("assets/images/lettutor_logo.svg",
            height: 35, fit: BoxFit.scaleDown),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: ElevatedButton(
            onPressed: () {},
            child: Container(
              child:
              SvgPicture.asset("assets/images/usa_flag.svg", height: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              clipBehavior: Clip.hardEdge,
            ),
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(10),
              backgroundColor:
              Color.fromRGBO(228, 230, 235, 1), // <-- Button color
              foregroundColor: Colors.red, // <-- Splash color
            ),
          ),
        )
      ],
      elevation: 1,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
