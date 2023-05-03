part of 'index.dart';

extension _Widget on _CarInfoState {
  Widget get _carInfo {
    return Scaffold(
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(25),
          ),
          _type,
        ],
      ),
    );
  }
}

Widget get _type {
  return Builder(builder: (context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: List.generate(
        postAddAndPostsData.length,
        (index) => Padding(
          padding: const EdgeInsets.all(20),
          child: Material(
            color: MyThemes.mainGreen,
            borderRadius: BorderRadius.circular(5),
            child: InkWell(
              borderRadius: BorderRadius.circular(5),
              onTap: () {
                if ("1" == postAddAndPostsData[index].id.toString()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const CarBrand()),
                    ),
                  );
                } else if ("2" == postAddAndPostsData[index].id.toString()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const MotoBrand()),
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
                          postAddAndPostsData[index].logo.toString(),
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          postAddAndPostsData[index].name.toString(),
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

// List<Map<String, dynamic>> _typeService = [
//   {"icon": Icons.car_repair, "text": "Өвөл хийх үйлчилгээ"},
//   {"icon": Icons.car_repair, "text": "Зун хийх үйлчилгээ"},
//   {"icon": Icons.car_repair, "text": "Аялалд явахдаа"},
//   {"icon": Icons.car_repair, "text": "Хийгдсэн байх даатгал"},
//   {"icon": Icons.car_repair, "text": "Байнга шалгавал зохих"},
//   {"icon": Icons.car_repair, "text": "Өвлийн улиралд"},
// ];
