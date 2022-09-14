import 'package:flutter/material.dart';

import '../../../constant.dart';
class ProfileMenu extends StatelessWidget {
  ProfileMenu({required this.text,required this.icon,required this.press,
    Key? key,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: RawMaterialButton(
        padding: EdgeInsets.all(20),
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        fillColor: Color(0xfff5f6f9),
        onPressed: press,
        child: Row(
          children: [
            Icon(
              icon,
              size: 22,
              color: kPrimaryColor,
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.bodyText1,
                )),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}