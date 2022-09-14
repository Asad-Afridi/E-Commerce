import 'package:e_commerce_app/screens/messages/messages_screen.dart';
import 'package:flutter/material.dart';
import '../../../constant.dart';
import '../../../enums.dart';
import '../../home/home_screen.dart';
import '../profile_screen.dart';
class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({
    required this.selectedMenu,
    Key? key,
  }) : super(key: key);
  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveColor=Color(0xffb6b6b6);
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 20,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -15),
                blurRadius: 20,
                color: Color(0xffdadada).withOpacity(0.3)),
          ]),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen())),
              icon: Icon(
                Icons.shop,
                color: MenuState.home==selectedMenu? kPrimaryColor:inActiveColor,
              ),
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.favorite_outline,
                color: MenuState.favourite==selectedMenu? kPrimaryColor:inActiveColor,
              ),
            ),
            IconButton(
              onPressed: (){
                Navigator.pushNamed(context, MessagesScreen.routeName);
              },
              icon: Icon(
                Icons.chat,
                color: MenuState.message==selectedMenu? kPrimaryColor:inActiveColor,
              ),
            ),
            IconButton(
              onPressed: ()=>Navigator.pushNamed(context, ProfileScreen.routeName),
              icon: Icon(
                Icons.person,
                color: MenuState.profile==selectedMenu? kPrimaryColor:inActiveColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}