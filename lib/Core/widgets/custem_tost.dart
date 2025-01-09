import 'package:elrawee/Core/utils/app_color.dart';
import 'package:fluttertoast/fluttertoast.dart';

void custemToast(String msg) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.SNACKBAR,
      timeInSecForIosWeb: 1,
      backgroundColor: AppColor.primaryColor,
      textColor: AppColor.appBarColor,
      fontSize: 16.0);
}
