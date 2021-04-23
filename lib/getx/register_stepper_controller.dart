import 'package:get/get.dart';

class RegisterStepperCtrl extends GetxController{
  var index = 0.obs;
  void changeIndex(int newIndex){
    index.value = newIndex;
  }
}