import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePicture{
  static uploadImage(XFile file) async {
    var ref = await FirebaseStorage.instance.ref('files/${file.name}');
    var task = await ref.putFile(File(file.path));
    var imageUrl= await task.ref.getDownloadURL();

  // Updating imageUrl in User collection
    var userUid= await FirebaseAuth.instance.currentUser!.uid;
    await FirebaseFirestore.instance.collection('users').doc(userUid).update({
      'userImage': imageUrl
    });
  }
}