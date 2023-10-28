import 'package:get/get.dart';

class HomeController extends GetxController {
  int bodyindex = 1 ;

  switchToAboutUs(){
    bodyindex = 2;
    update();
  }

  switchToHome(){
    bodyindex = 1;
    update();
  }

  final List fields = [
    {'fieldicon': 'assets/smartphone.png', 'fieldlabel': 'Mobile'},
    {'fieldicon': 'assets/ux.png', 'fieldlabel': 'Web'},
    {'fieldicon': 'assets/ai.png', 'fieldlabel': 'AI'},
    {'fieldicon': 'assets/hack.png', 'fieldlabel': 'Cyber Security'},
  ];

  final List prevdev = [
    {
      'image': 'assets/Calque 3 (1).png',
      'label': 'Devest22',
      'body':
          'DevFest "Developers" Festival is an annual,\ninternational festival organized by Google \nDeveloper Groups (GDG) from around \nthe world.',
    },
    {
      'image': 'assets/Calque 3 (2).png',
      'label': 'Devest21',
      'body':
          'DevFest "Developers" Festival is an annual,\ninternational festival organized by Google \nDeveloper Groups (GDG) from around \nthe world.',
    },
    {
      'image': 'assets/Calque 3 (1).png',
      'label': 'Devest20',
      'body':
          'DevFest "Developers" Festival is an annual,\ninternational festival organized by Google \nDeveloper Groups (GDG) from around \nthe world.',
    },
    {
      'image': 'assets/Calque 3 (2).png',
      'label': 'Devest19',
      'body':
          'DevFest "Developers" Festival is an annual,\ninternational festival organized by Google \nDeveloper Groups (GDG) from around \nthe world.',
    }
  ];

  
}

