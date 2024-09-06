// ignore_for_file: use_build_context_synchronously

import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evente/bloc/sign_up_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';
import 'package:provider/provider.dart';


class SplashScreen extends StatefulWidget {
  final WidgetBuilder a;
  final WidgetBuilder b;
  final WidgetBuilder c;
  final WidgetBuilder d;
  SplashScreen({required this.a, required this.b, required this.c, required this.d});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    afterSplash();
    // _getIsFirst();
  }

  void afterSplash() {
    final SignInBloc sb = context.read<SignInBloc>();
    Future.delayed(Duration(milliseconds: 2500)).then((value) {
      if (sb.isSignedIn) {
        checkUserRole();
      } else {
        gotoSignInPage();
      }
    });
  }

  gotoSignInPage() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: widget.d), // Menggunakan parameter dinamis
    );
  }

  gotoHomePage(String? role) {
    final SignInBloc sb = context.read<SignInBloc>();
    if (role == 'administrator') {
      //  widget.a();
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: widget.a), // Menggunakan parameter dinamis
      );
    } else if (role == 'editor') {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: widget.b), // Menggunakan parameter dinamis
      );
    } else if (role == 'ticket') {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: widget.c), // Menggunakan parameter dinamis
      );
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: widget.d), // Menggunakan parameter dinamis
      );
    }
  }

  Future<PackageInfo> _getPackageInfo() {
    return PackageInfo.fromPlatform();
  }

  Future<void> checkUserRole() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      // Ambil data pengguna dari Firestore berdasarkan UID
      DocumentSnapshot userDoc = await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
      if (userDoc.exists) {
        String role = userDoc['role'];
        gotoHomePage(role);
      } else {
        gotoHomePage(null); // Jika pengguna tidak ada di database
      }
    } else {
      gotoHomePage(null); // Jika pengguna belum login
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Stack(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // width: 270.0,
                  // height: 100.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/logoSplash.jpeg'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.only(top: 60.0,left: 100),
                //   child: Container(
                //     height: 35.0,
                //     width: 200.0,
                //     color: Colors.white,
                //     child: const Text("Admin Version",style: TextStyle(fontFamily: "Sofia",fontSize: 20.0,fontWeight: FontWeight.w600),)))
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 300.0,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/background.png'), fit: BoxFit.cover),
              ),
            ),
          ),
          FutureBuilder<PackageInfo>(
              future: _getPackageInfo(),
              builder: (context, snapshot) {
                return Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: 300.0,
                    height: 45 * 2,
                    child: Center(
                      child: Text(
                        'Version ${snapshot.data?.version ?? ''}',
                      ),
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
