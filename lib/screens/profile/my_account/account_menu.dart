import 'package:e_commerce_app/constant.dart';
import 'package:flutter/material.dart';

class AccountMenu extends StatelessWidget {
  AccountMenu({required this.text,required this.icon,required this.press,
    Key? key,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xfff5f6f9),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          children: [
            SizedBox(width: 5,),
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
            IconButton(
                onPressed: press,
               icon: Icon(Icons.edit,color: kSecondaryColor,))
          ],
        ),
      ),
    );
  }
}