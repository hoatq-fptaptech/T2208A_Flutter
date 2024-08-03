import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../bloc/bloc.dart';

class ProfileScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    String jwt = Provider.of<Bloc>(context,listen: false).loadJwt??"";
    return Text("Profile Screen monitor.." + jwt);
  }
}