part of 'index.dart';

extension _Widget on _CarBrandState {
  Widget get _carInfo {
    return Scaffold(
      body: _type,
    );
  }
}

Widget get _type {
  return ListView(
    children: [
      Column(
        children: List.generate(
          carBrandategoriesData.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                color: MyThemes.mainGreen,
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              height: 90,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      carBrandategoriesData[index].logo.toString(),
                      height: 50,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    flex: 2,
                    child: Text(
                      carBrandategoriesData[index].name.toString(),
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
