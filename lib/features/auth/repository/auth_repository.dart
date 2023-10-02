import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pizza_app/features/auth/screen/login_screen.dart';
import 'package:pizza_app/resources/utils.dart';

class AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future createUser({
    required BuildContext context,
    required String email,
    required String password,
    required String username,
  }) async {
    try {
      if (email.isNotEmpty || password.isNotEmpty || username.isNotEmpty) {
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        showSnackBar(
          context,
          'great!!! you have created now login with same credentials',
        );
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
        );

        await _firestore.collection('users').doc(cred.user!.uid).set({
          'email': email,
          'username': username,
          'uid': cred.user!.uid,
        });
      } else {
        showSnackBar(
          context,
          'fill all the feilds',
        );
      }
    } catch (e) {
      showSnackBar(
        context,
        e.toString(),
      );
    }
    // return null;s
  }

  Future loginUser({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      UserCredential cred = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      showSnackBar(context, 'success');
    } catch (e) {
      showSnackBar(
        context,
        e.toString(),
      );
    }
  }
}
