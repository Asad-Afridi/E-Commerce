import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/models/userModel/user.dart';
import 'package:e_commerce_app/screens/drawer/menu_items.dart';
import 'package:e_commerce_app/screens/sign_in/sign_in_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen(
      {Key? key, required this.currentItem, required this.onSelected})
      : super(key: key);
  final MenuItemm currentItem;
  final ValueChanged<MenuItemm> onSelected;

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {

  @override
  void initState() {
    super.initState();
    UserData.getUserData();
  }

  @override
  Widget build(BuildContext context){
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                child:CircleAvatar(
                  radius: 40,
                  backgroundColor: kPrimaryLightColor,
                  backgroundImage: UserData.image == null
                      ? NetworkImage(
                      'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png')
                      : NetworkImage(UserData.image!),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0),
                child: Text(
                  UserData.name ?? '',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              Spacer(
                flex: 2,
              ),
              ...MenuItems.all.map(buildMenuItem).toList(),
              Spacer(
                flex: 4,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, bottom: 10),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        FirebaseAuth.instance.signOut();
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInScreen()),
                            (Route<dynamic> route) => false);
                      },
                      icon: Icon(
                        Icons.logout,
                        size: 30,
                      ),
                    ),
                    Text(
                      'LogOut',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
              Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(MenuItemm item) => ListTile(
        selectedColor: Colors.white,
        selectedTileColor: Colors.black26,
        selected: widget.currentItem == item,
        minLeadingWidth: 20,
        leading: Icon(item.icon),
        title: Text(item.title),
        onTap: () => widget.onSelected(item),
      );
}
