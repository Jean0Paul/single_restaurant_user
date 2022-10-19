// ignore_for_file: camel_case_types, depend_on_referenced_packages, unused_local_variable

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:singlerestaurant/Widgets/loader.dart';

class connections {
  static bool isoffline = false;

  // connections();
  conect() async {
    var result = await Connectivity().checkConnectivity();
    var connection = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      // whenevery connection status is changed.

      if (result == ConnectivityResult.none) {
        //there is no any connection
        connections.isoffline = false;
        loader.showErroDialog(
          description: "Please check internet connection",
        );
        Fluttertoast.showToast(
          msg: "Please check internet connection",
          toastLength: Toast.LENGTH_SHORT,
        );
      } else if (result == ConnectivityResult.mobile) {
        //connection is mobile data network

        connections.isoffline = true;
      } else if (result == ConnectivityResult.wifi) {
        //connection is from wifi

        connections.isoffline = true;
      } else if (result == ConnectivityResult.ethernet) {
        //connection is from wired connection

        connections.isoffline = true;
      } else if (result == ConnectivityResult.bluetooth) {
        //connection is from bluetooth threatening

        connections.isoffline = true;
      }
    });
  }
}
