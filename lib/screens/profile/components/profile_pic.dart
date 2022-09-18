import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/models/userModel/user.dart';
import 'package:e_commerce_app/services/upload_profilePic/profile_pic_funcs.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePic extends StatefulWidget {
  ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfilePic> createState() => _ProfilePicState();
}

class _ProfilePicState extends State<ProfilePic> {
  @override
  void initState() {
    super.initState();
    UserData.getUserData();
  }

  @override
  Widget build(BuildContext context) {
    print("#######${UserData.image}");
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          CircleAvatar(
            backgroundColor: kPrimaryLightColor,
            backgroundImage: UserData.image == null
                ? AssetImage(
                    'assets/myIcons/defaultDpPic.webp')
                : NetworkImage(UserData.image!) as ImageProvider,
          ),
          Positioned(
            right: -12,
            bottom: 0,
            child: SizedBox(
              height: 46,
              width: 46,
              child: RawMaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: BorderSide(color: Colors.white)),
                  padding: EdgeInsets.zero,
                  fillColor: Color(0xfff5f6f9),
                  onPressed: () async {
                    var file = await ImagePicker()
                        .pickImage(source: ImageSource.gallery);
                    ProfilePicture.uploadImage(file!);
                    await UserData.getUserData();
                    setState(() {});
                  },
                  child: Icon(Icons.camera_alt_outlined)),
            ),
          )
        ],
      ),
    );
  }
}
