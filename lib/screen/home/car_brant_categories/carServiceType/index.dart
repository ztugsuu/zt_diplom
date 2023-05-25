import 'package:flutter/material.dart';
import 'package:grage_app/screen/home/car_brant_categories/carServiceType/publishedPost/index.dart';

import '../../../../data/categories.dart';
import '../../../../theme/themes.dart';

class CarServiceType extends StatefulWidget {
  const CarServiceType({super.key});

  @override
  State<CarServiceType> createState() => _CarServiceTypeState();
}

class _CarServiceTypeState extends State<CarServiceType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyThemes.mainGreenBG,
        elevation: 0.0,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        title: const Text(
          'Эвдрэл',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            // color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Wrap(
          alignment: WrapAlignment.center,
          children: List.generate(
            carServicetypeData.length,
            (index) => Padding(
              padding: const EdgeInsets.all(20),
              child: Material(
                color: MyThemes.mainGreenBG,
                borderRadius: BorderRadius.circular(5),
                child: InkWell(
                  borderRadius: BorderRadius.circular(5),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const PublishPost()),
                      ),
                    );
                  },
                  splashColor: MyThemes.mainGray,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 2, color: MyThemes.mainGreen),
                    ),
                    width: 150,
                    height: 150,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Image.asset(
                            carServicetypeData[index].logo.toString(),
                            height: 50,
                            width: 50,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            carServicetypeData[index].name.toString(),
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
