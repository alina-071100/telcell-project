import 'package:first_app/helpers/colors.dart';
import 'package:flutter/material.dart';
// import 'package:first_app/widgets/other_sections.dart';

class BonTab extends StatefulWidget {
  const BonTab({super.key});

  @override
  State<BonTab> createState() => _BonTabState();
}

class _BonTabState extends State<BonTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        elevation: 0,
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'BON',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: AppColors.appBlack,
            ),
          ),
        ),
        centerTitle: true,
        title: appBarTitle(),
        bottom: filters([
          {
            'icon': Icons.maps_home_work_outlined,
            'label': 'Market',
          },
          {
            'icon': Icons.access_time_filled_rounded,
            'label': 'My products',
          },
          {
            'icon': Icons.wrong_location_rounded,
            'label': 'Invite friends',
          },
          {
            'icon': Icons.water_damage_rounded,
            'label': 'Bon partners',
          },
        ]),
      ),
      
      body: body(),
    );
  }

  Widget appBarTitle() {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '2000',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: AppColors.appBlack,
              ),
            ),
            Icon(
              Icons.currency_bitcoin,
              color: AppColors.appOrange,
              size: 25,
            )
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Until 30 sep 2023',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.appBlack.withAlpha(100),
              ),
            ),
            Icon(
              Icons.info_outline,
              color: AppColors.appOrange,
              size: 13,
            )
          ],
        )
        
      ],
    );
  }

  Widget body() {
    return itemList([
          {
            'image': 'https://www.coffeehouse.am/storage/files/spanish-latte-214x_.png?token=ad6067aeb1bef13e27b1022da1438057',
            'text': '01 sep - 30 sep',
            'description1': 'Թարմացնող սուրճ Coffee House-ից',
            'description2': 'Coffee House',
            'description3': 'Փոխանակեք Ձեր BON-երը մեկ բաժակ սուրճի հետ',
            'limitation': '3',
          },
          {
            'image': 'https://braind.ca/images_list/626a90ba4d68b/626a90ba4d694coffee-house-11.jpg',
            'text': '01 sep - 30 sep',
            'description1': 'Երկու սուրճ Coffee House-ից',
            'description2': 'Coffee House',
            'description3': 'Փոխանակեք Ձեր BON-երը երկու բաժակ սուրճի հետ',
            'limitation': '3',
          },
          {
            'image': 'https://www.coffeehouse.am/storage/files/elak-narinj-214x_.png?token=74f9906ff7ee47f052811511b866e541',
            'text': '01 sep - 30 sep',
            'description1': 'Սմուզի Coffee House-ից',
            'description2': 'Coffee House',
            'description3': 'Փոխանակեք Ձեր BON-երը սմուզիի համերից որևէ մեկի հետ',
            'limitation': '3',
          },
          {
            'image': 'https://www.sas.am/upload/Sh/imageCache/391/299/299512945196845.jpg',
            'text': '01 sep - 30 sep',
            'description1': 'Երկու կտոր Արուսիկ տիրամիսու առաքումով Երևանում',
            'description2': 'Արուսիկ տիրամիսու',
            'description3': 'Փոխանակեք Ձեր BON-երը երկու կտոր տիրամիսուի հետ',
            'limitation': '1',
          },
          {
            'image': 'https://static.parma.am/origin/product/1024/00842.jpg',
            'text': '01 sep - 30 sep',
            'description1': 'Երեք կտոր Արուսիկ տիրամիսու առաքումով Երևանում',
            'description2': 'Արուսիկ տիրամիսու',
            'description3': 'Փոխանակեք Ձեր BON-երը երեք կտոր տիրամիսուի հետ',
            'limitation': '1',
          },
          {
            'image': 'https://www.sas.am/upload/Sh/imageCache/304/901/9010024167539508.jpg',
            'text': '13 sep - 30 sep',
            'description1': 'Արուսիկ տիրամիսու(մեծ) առաքումով Երևանում',
            'description2': 'Արուսիկ տիրամիսու',
            'description3': 'Փոխանակեք Ձեր BON-երը Արուսիկ տիրամիսուի հետ ամբողջ ընտանիքի համար',
            'limitation': '1',
          },
          {
            'image': 'https://i.ebayimg.com/images/g/EaEAAOSwDPFjsaRr/s-l1200.webp',
            'text': '01 sep - 30 sep',
            'description1': 'Պոնչիկներ Ռինգոյից',
            'description2': 'Ringo Ponchik & Perazhki',
            'description3': 'Փոխանակեք Ձեր BON-երը 3 պոնչիկից բաղկացած սեթի հետ',
            'limitation': '5',
          },
          {
            'image': 'https://i.ebayimg.com/images/g/EaEAAOSwDPFjsaRr/s-l1200.webp',
            'text': '01 sep - 30 sep',
            'description1': 'Խաչապուրիների սեթ',
            'description2': 'Gurmania.am WEB',
            'description3': 'Փոխանակեք Ձեր BON-երը թարմ խաչապուրիների սեթի(6 հատ) հետ',
            'limitation': '1',
          },
        ]);
  }

  PreferredSizeWidget filters(List<Map<String, dynamic>> data) {
    return PreferredSize(
      preferredSize: const Size(200, 60),
      child: SizedBox(
        height: 40,
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: data.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          itemBuilder: (context, index) {
            return OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                backgroundColor: AppColors.appLightGrey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              onPressed: () {},
              icon: Icon(
                data[index]['icon'],
                color: AppColors.appOrange,
              ),
              label: Text(
                data[index]['label'],
                style: TextStyle(color: AppColors.appBlack),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 10,
            );
          },
        ),
      ),
    );

  }

  Widget itemList(List<Map<String, dynamic>> dataItems) {
    return ListView.separated(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Image.network(
                     dataItems[index]['image'] ,
                    ),
                  ),
                  Expanded(
                    child: Text(
                     dataItems[index]['text'] ,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.appBlack.withAlpha(200),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blueGrey.shade100),
                    height: 25,
                    width: 25,
                    child: Text(
                      dataItems[index]['limitation'],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.appOrange,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dataItems[index]['description1'],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.appBlack,
                    ),
                  ),
                  Text(
                     dataItems[index]['description2'],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.appBlack.withAlpha(200),
                    ),
                  ),
                  Text(
                     dataItems[index]['description3'],
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.appBlack.withAlpha(200),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: LinearProgressIndicator(
                      value: 0.5,
                      minHeight: 10,
                      color: AppColors.appOrange,
                      backgroundColor: AppColors.appLightGrey,
                    ),
                  ),
                ],
              ),
              // color: Colors.green,
            ),
          ),
        ],
      ),
    );

        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemCount: 8);
  }


}