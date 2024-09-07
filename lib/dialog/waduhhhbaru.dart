import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evente/base/color_data.dart';
import 'package:evente/base/widget_utils.dart';
import 'package:evente/bloc/sign_in_bloc%20copy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class waduhhh extends StatefulWidget {
  String? sd;
   waduhhh({super.key,this.sd});

  @override
  State<waduhhh> createState() => _waduhhhState();
}

class _waduhhhState extends State<waduhhh> {
  @override
  Widget build(BuildContext context) {
    final sb = context.watch<LokiPolsae>();
    return  StreamBuilder(
               stream: FirebaseFirestore.instance.collection("users").doc(sb.uid).collection('Join Event').snapshots(),
             
              builder: (
                  BuildContext ctx,
                  AsyncSnapshot<QuerySnapshot> snapshot,) {
                return Stack(
                  children: [
                  Padding(
                    padding: const EdgeInsets.only(top:4.0),
                    child: getSvg(widget.sd??"", height: 24.h, width: 24.h),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 14.0,
                      width: 14.0,
                      decoration: BoxDecoration(
                        color: accentColor,
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      ),
                      child: Center(
                        child: Text(snapshot.data?.docs.length.toString() ??"0",style: TextStyle(color: Colors.white,fontSize: 10.0),),
                      ),
                    ),
                  )
                  ]);
              }
            );
  }
}