

import 'package:get/get.dart';

class BottomNavController extends GetxController{
var currentPage = 0.obs;
void changePage(int index){
currentPage.value=index;
}
}