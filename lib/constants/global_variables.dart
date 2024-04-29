import 'package:flutter/material.dart';

String uri = 'http://192.168.0.55:3000';

class GlobalVariables {
  // COLORS
  static const appBarGradient = LinearGradient(
    colors: [
      // Colors.black,
      Colors.black,
      Colors.black45,

      // Color.fromARGB(255, 29, 201, 192),
      // Color.fromARGB(255, 125, 221, 216),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = Colors.cyan[800]!;
  static const unselectedNavBarColor = Colors.black87;

  // STATIC IMAGES
  static const List<String> carouselImages = [
    // 'https://images-eu.ssl-images-amazon.com/images/G/31/img21/Wireless/WLA/TS/D37847648_Accessories_savingdays_Jan22_Cat_PC_1500.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPBcUt35QfSTLlrcmFQFnMWBOLXSgh6eDC1Q&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3v2yv05v2Wrt4SMwsvRpH5_wovcs-R24JxQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlSyRbCRR75AV5ORvZjoaJuuhOSZFqZHXoKw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFVC-kr4prjoBK-mfkTWXT2HkEFmacSj99WQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjSSSZ8x0p_hKjwuOrlkaaC63eFSl8lsfXdQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIsLMKAnzDJPVde7rfcnpRJ0yR5YrLLBUqwA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTe5wTnKpezbE2074K3OrLy3m2neOVc0asXEQ&s',
  ];

  static const List<Map<String, String>> categoryImages = [
    {
      'title': 'Auto Part',
      'image': 'assets/images/proparts.jpeg',
    },
    {
      'title': 'Accessories',
      'image': 'assets/images/icon_auto.png',
    },
    // {
    //   'title': 'Appliances',
    //   'image': 'assets/images/appliances.jpeg',
    // },
    // {
    //   'title': 'Books',
    //   'image': 'assets/images/books.jpeg',
    // },
    // {
    //   'title': 'Fashion',
    //   'image': 'assets/images/fashion.jpeg',
    // },
  ];
}
