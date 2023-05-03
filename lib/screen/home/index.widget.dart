part of 'index.dart';

extension _Widget on _ServiceTypeState {
  Widget get _serviceType {
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.all(25),
          child: Text(
            'Санал болгож буй үйлчилгээ',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              // color: Color.fromARGB(255, 255, 72, 0),
            ),
          ),
        ),
        _type,
      ],
    );
  }
}

Widget get _type {
  return Builder(builder: (context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: List.generate(
        serviceCategoriesData.length,
        (index) => Padding(
          padding: const EdgeInsets.all(20),
          child: Material(
            color: MyThemes.mainGreen,
            borderRadius: BorderRadius.circular(5),
            child: InkWell(
              borderRadius: BorderRadius.circular(5),
              onTap: () {
                if ("1" == serviceCategoriesData[index].id.toString()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const CarBrand()),
                    ),
                  );
                } else if ("2" == serviceCategoriesData[index].id.toString()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const MotoBrand()),
                    ),
                  );
                } else if ("3" == serviceCategoriesData[index].id.toString()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const AutoWash()),
                    ),
                  );
                } else if ("4" == serviceCategoriesData[index].id.toString()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const ProductBrand()),
                    ),
                  );
                }
              },
              splashColor: MyThemes.mainGreen,
              child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    // color: Color.fromARGB(255, 255, 72, 0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  width: 150,
                  height: 150,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Image.asset(
                          serviceCategoriesData[index].logo.toString(),
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          serviceCategoriesData[index].title.toString(),
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  });
}

// Widget get _type1 {
//   return Wrap(
//     alignment: WrapAlignment.center,
//     children: List.generate(
//       serviceCategoriesData.length,
//       (index) => Padding(
//         padding: const EdgeInsets.all(20),
//         child: Container(
//           decoration: const BoxDecoration(
//             shape: BoxShape.rectangle,
//             // color: Color.fromARGB(255, 255, 72, 0),
//             borderRadius: BorderRadius.all(
//               Radius.circular(20),
//             ),
//           ),
//           width: 150,
//           height: 150,
//           child: Column(
//             children: [
//               Expanded(
//                 flex: 2,
//                 child: Icon(
//                   serviceCategoriesData[index].logo as IconData?,
//                 ),
//               ),
//               Expanded(
//                 flex: 1,
//                 child: Text(
//                   _typeService[index]["text"],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

// List<Map<String, dynamic>> _typeService = [
//   {"icon": Icons.car_repair, "text": "Машин угаалга"},
//   {"icon": Icons.car_repair, "text": "Кузов засвар"},
//   {"icon": Icons.car_repair, "text": "Явах эд анги"},
//   {"icon": Icons.car_repair, "text": "Авто оношилгоо"},
// ];
