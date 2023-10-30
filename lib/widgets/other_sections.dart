import 'package:flutter/material.dart';
import 'package:first_app/helpers/colors.dart';

  section2() {
    return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
    child: Row(
      children: [
        serviceItem2(icon: Icons.monetization_on_outlined, title: 'Payments', bgColor: AppColors.appLightGrey),
        serviceItem2(icon: Icons.sync_alt_outlined, title: 'Transfers', bgColor: AppColors.appLightGrey),
        serviceItem2(icon: Icons.directions_bus_filled_outlined, title: 'Transport', bgColor: AppColors.appLightGrey),
        serviceItem2(icon: Icons.money_rounded, title: 'Loans', bgColor: AppColors.appLightGrey),
        serviceItem2(icon: Icons.event_available_outlined, title: 'Events', bgColor: AppColors.appLightGrey),
        serviceItem2(icon: Icons.arrow_circle_up_outlined, title: 'Withdrawal', bgColor: AppColors.appLightGrey),
        serviceItem2(icon: Icons.handshake_outlined, title: 'Partners', bgColor: AppColors.appLightGrey),
      ])
  );
  }

Widget serviceItem2(
      {required String title,
      required Color bgColor,
       required IconData icon,
      }) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 15, 32, 25),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(15)
      ),
       width: 102,
      height: 100,
      child: Column( 
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: AppColors.appOrange),
          Text(title, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
      ]),
    );
  }


section3() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
    child: Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 300, 0),
      decoration: BoxDecoration(color: AppColors.appLightGrey, shape: BoxShape.circle),
        child: IconButton(onPressed: () {}, icon: const Icon(Icons.add), color: AppColors.appBlack, iconSize: 30,)
      )
  );
}


section5() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
    child: Row(
      children: [
        serviceItem4(title: 'Անվճար առաքում',  bgColor: Colors.purple.shade300, imageURL: 'assets/images/1920px-Van_Gogh_The_Olive_Trees..jpg'),
        serviceItem4(title: '30% զեղչ',  bgColor: Colors.purple, imageURL: 'assets/images/1920px-Vincent_van_Gogh_-_Wheat_Field_with_Cypresses_-_Google_Art_Project.jpg'),
        serviceItem4(title: 'Նվեր՝ պիցցա', bgColor: Colors.amber.shade900, imageURL: 'assets/images/1920px-Vincent_Willem_van_Gogh_098.jpg'),
        serviceItem4(title: '20% բոնուս', bgColor: Colors.purple, imageURL: 'assets/images/Irises-Vincent_van_Gogh.jpg'),
        serviceItem4(title: '1000 դրամ զեղչ', bgColor: Colors.orange, imageURL: 'assets/images/Vincent_van_Gogh_-_Almond_blossom_-_Google_Art_Project.jpg'),
        serviceItem4(title: '1000 դրամ զեղչ', bgColor: Colors.purple, imageURL: 'assets/images/Vincent_van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg'),
        serviceItem4(title: 'Անվճար առաքում', bgColor: Colors.green.shade200, imageURL: 'assets/images/Whitehousenight.jpg'),
        serviceItem4(title: 'Նվեր՝ Yan (250մլ)', bgColor: Colors.red, imageURL: 'assets/images/Vincent_van_Gogh_-_Wheatfield_under_thunderclouds_-_Google_Art_Project.jpg'),
      ])
  );
 }

 Widget serviceItem4(
      {required String title,
      required Color bgColor,
      required String imageURL}) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 15, 5, 25),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(style: BorderStyle.none),
      image: DecorationImage(
        fit: BoxFit.fill,
        image:AssetImage(imageURL)),
      color: bgColor,
      borderRadius: BorderRadius.circular(15)
      ),
       width: 180,
      height: 120,
      child: Column( 
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.bgColor, backgroundColor: Colors.black26)),
      ]),
    );
  }



section4() {
  return Column(
    children: [
      Container(
                padding: const EdgeInsets.fromLTRB(33, 0, 0, 15),
             child: const Row (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Add'),
              ]
              ),
              ),
  
           Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
         child: const Row (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('History', style: TextStyle(color: Colors.black, fontSize: 20)),
          Text('view all'),
          ]
          ),
          ),
          Container(
            height: 70,
            padding:const EdgeInsets.fromLTRB(8, 15, 5, 25),
            margin: const EdgeInsets.fromLTRB(15, 10, 15, 2),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(15),
            ),

          ),
          Container(
            height: 70,
            padding:const EdgeInsets.fromLTRB(8, 15, 5, 25),
          margin: const EdgeInsets.fromLTRB(15, 10, 15, 2),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(15),
            ),
),
          Container(
            height: 70,
            padding:const EdgeInsets.fromLTRB(8, 15, 5, 25),
         margin: const EdgeInsets.fromLTRB(15, 10, 15, 20),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(15),
            ),
),
Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
         child: const Row (
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Text('Special offers', style: TextStyle(color: Colors.black, fontSize: 20)),
          ]
          ),
          ),
    ],
  );
}


section6() {
  return   Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
         child: const Row (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('Services', style: TextStyle(color: Colors.black, fontSize: 20)),
          Text('view all'),
          ]
          ),
          );
}


section7(){
  return Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
         child: const Row (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('Favorits', style: TextStyle(color: Colors.black, fontSize: 20)),
          Text('view all'),
          ]
          ),
          );
}

// section8() {
//   return   Container(
//             padding: const EdgeInsets.symmetric(horizontal: 15),
//          child: const Row (
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//           Text('Top products', style: TextStyle(color: Colors.black, fontSize: 20)),
//           Text('view all'),
//           ]
//           ),
//           );
// }